package com.radsolutions.fleetbooks.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.radsolutions.fleetbooks.DTO.Account;
import com.radsolutions.fleetbooks.datasource.DataSource;

/**
 * Handles the communication from the applications to the DB to manage user accounts
 * @author Zemuel Roman
 * 
 */
public class AccountManager {

	//Querries to get data from DB
	private static final String GET_ADMIN_ACCOUNTS = "SELECT * FROM Account WHERE type = 'Administrator'";
	private static final String GET_USER_BY_EMAIL = "SELECT * FROM Account WHERE email = ?";
	private static final String GET_USER_BY_ID = "SELECT * FROM Account WHERE id = ?";
	
	//Add data to DB
	private static final String ADD_ACCOUNT = "INSERT INTO account(firstname, lastname, email, password, phone, type, approved) VALUES (?, ?, ?, ?, ?, ?, ?)";
	
	//Modify DB data
	private static final String UPDATE_ACCOUNT = "UPDATE account SET firstname=?, lastname=?, email=?, password=?, phone=?, type=?, approved=? WHERE id = ?";
	
	//Delete account from system (mar approved = FALSE in DB)
	private static final String DELETE_ACCOUNT = "UPDATE account SET approved = FALSE WHERE id = ?";
	
	private static final AccountManager singleton = new AccountManager();

	
	private AccountManager(){

	}

	public static final AccountManager getInstance(){
		return singleton;
	}

	/**
	 * Fetches an user in the DB with the given email
	 * @param email User email
	 * @return user matching the given email 
	 */
	public Account getUserByEmail(String email){
		Account result = null;
		Connection conn = null;
		try {
			conn = DataSource.getInstance().getJDBCConnection();
			PreparedStatement stmt = conn.prepareStatement(GET_USER_BY_EMAIL);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()){
				result = new Account();
				this.createAccountFromRS(result, rs);
			}
		}
		catch(Exception e){
			System.out.println("Unable to read data from data source: "+ e);
		}
		finally {
			this.closeConnection(conn);
		}
		return result;
	}

	/**
	 * Fetches the DB for an account with the given id
	 * @param id The account id
	 * @return The account
	 */
	public Account getUserById(int id){
		Account result = null;
		Connection conn = null;
		try {
			conn = DataSource.getInstance().getJDBCConnection();
			PreparedStatement stmt = conn.prepareStatement(GET_USER_BY_ID);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()){
				result = new Account();
				this.createAccountFromRS(result, rs);
			}
		}
		catch(Exception e){
			System.out.println("Unable to read data from data source: "+ e);
		}
		finally {
			this.closeConnection(conn);
		}
		return result;
	}

	/**
	 * Finds all the Administrator accounts in the DB
	 * @return List of all admins
	 */
	public ArrayList<Account> getAllAdministrators(){
		ArrayList<Account> result = new ArrayList<Account>();
		Account indRes;
		Connection conn = null;
		try {
			conn = DataSource.getInstance().getJDBCConnection();
			PreparedStatement stmt = conn.prepareStatement(GET_ADMIN_ACCOUNTS);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()){
				indRes = new Account();
				createAccountFromRS(indRes, rs);
				result.add(indRes);
			}
		}
		catch(Exception e){
			System.out.println("Unable to read data from data source: "+ e);
		}
		finally {
			closeConnection(conn);
		}
		return result;
	}

	/**
	 * Adds account to the DB and creates a new account request notification. Returns true if successful, false otherwise
	 * @param a The account to add
	 * @return true if successful, false otherwise
	 */
	public boolean addAccount(Account a) {		
		Connection conn = null;
		int status;
		try{
			conn = DataSource.getInstance().getJDBCConnection();
			conn.setAutoCommit(false);

			PreparedStatement stmt = conn.prepareStatement(ADD_ACCOUNT);
			stmt.setString(1, a.getFirstName());
			stmt.setString(2, a.getLastName());
			stmt.setString(3, a.getEmail());
			stmt.setString(4, a.getPassword());
			stmt.setString(5, a.getPhone());
			stmt.setString(6, a.getType());
			stmt.setBoolean(7, a.isApproved());

			status = stmt.executeUpdate();
			if (status != 1){
				throw new Exception("Error adding account");
			}

			//Need to add the creation of a new account request and checking its status

			if (status != 1){
				conn.rollback();
				conn.setAutoCommit(true);
				throw new Exception("Error creating new acount request");
			}
			else{ 
				try{
					conn.commit();
				}
				catch(Exception e){
					try{
						conn.rollback();
						conn.setAutoCommit(true);
					}
					catch(Exception e2){
					}

					throw new Exception("Unable to commit transaction.", e);
				}
				conn.setAutoCommit(true);
			}
		}
		catch(Exception e){
			return false;
		}
		finally{
			this.closeConnection(conn);
		}
		return true;
	}
	
	/**
	 * Modifies the account a in the DB with the values given in the object
	 * @param a The modified account
	 * @return true if successful, false otherwise
	 */
	public boolean editAccount(Account a){
		Connection conn = null;
		int status;
		try{
			conn = DataSource.getInstance().getJDBCConnection();
			
			PreparedStatement stmt = conn.prepareStatement(UPDATE_ACCOUNT);
			//UPDATE account SET firstname=?, lastname=?, email=?, password=?, phone=?, type=?, approved=? WHERE id = ?
			stmt.setString(1, a.getFirstName());
			stmt.setString(2, a.getLastName());
			stmt.setString(3, a.getEmail());
			stmt.setString(4, a.getPassword());
			stmt.setString(4, a.getPhone());
			stmt.setString(5, a.getType());
			stmt.setBoolean(7, a.isApproved());
			stmt.setInt(7, a.getId());
			
			status = stmt.executeUpdate();
			if (status != 1){
				return false;
			}
		}
		catch(Exception e){
			return false;
		}
		finally{
			this.closeConnection(conn);
		}
		return true;
	}
	
	/**
	 * Removes an account form the system marking it as not approved in the DB
	 * @param id the id of the account to remove
	 * @return true if successful, false otherwise 
	 */
	public boolean deleteAccount(int id) {
		Connection conn = null;
		int status;
		try{
			conn = DataSource.getInstance().getJDBCConnection();
			
			PreparedStatement stmt = conn.prepareStatement(DELETE_ACCOUNT);

			stmt.setInt(1, id);
			
			status = stmt.executeUpdate();
			if (status != 1){
				return false;
			}
		}
		catch(Exception e){
			return false;
		}
		finally{
			this.closeConnection(conn);
		}
		return true;
	}

	/**
	 * Utility method to add the result set columns to an account object in the respective instance fields
	 * @param a The account object where the result set columns will be saved
	 * @param rs The result set
	 * @throws Exception  if a column index is not valid
	 */
	private void createAccountFromRS(Account a, ResultSet rs) throws Exception{
		a.setId(rs.getInt(1));
		a.setFirstName(rs.getString(2));
		a.setLastName(rs.getString(3));
		a.setEmail(rs.getString(4));
		a.setPassword(rs.getString(5));
		a.setPhone(rs.getString(6));
		a.setType(rs.getString(7));
		a.setApproved(rs.getBoolean(8));
	}

	/**
	 * Utility method to close a connection
	 * @param c The connection
	 */
	private void closeConnection(Connection c){
		if (c != null){
			try {
				c.close();
			}
			catch(Exception e2){

			}
		}
	}

}
