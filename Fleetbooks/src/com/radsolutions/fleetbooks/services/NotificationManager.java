package com.radsolutions.fleetbooks.services;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.radsolutions.fleetbooks.DTO.EquipmentCheckout;
import com.radsolutions.fleetbooks.DTO.EquipmentRequest;
import com.radsolutions.fleetbooks.DTO.MaintenanceNotification;
import com.radsolutions.fleetbooks.DTO.MalfunctionRequest;
import com.radsolutions.fleetbooks.DTO.NewAccountRequest;
import com.radsolutions.fleetbooks.DTO.Notification;
import com.radsolutions.fleetbooks.datasource.DataSource;

public class NotificationManager {
	
	private static final NotificationManager singleton = new NotificationManager();
	private static final String GET_NOTIFICATIONS = "SELECT * FROM notification WHERE isvisible = TRUE";
	private static final String GET_NOTIFICATION_BY_ID = "SELECT * FROM notification WHERE id = ?";
	private static final String GET_EQUIPMENT_CHECKOUT_BY_ID = "SELECT * FROM equipmentcheckout WHERE id = ?";
	private static final String GET_MAINTENANCE_NOTIFICATION_BY_ID = "SELECT * FROM maintenancenotification WHERE id = ?";
	private static final String GET_EQUIPMENT_REQUEST_BY_ID = "SELECT * FROM equipmentrequest WHERE id = ?";
	private static final String GET_MALFUNCTION_REQUEST_BY_ID = "SELECT * FROM malfunctionrequest WHERE id = ?";
	private static final String GET_NEW_ACCOUNT_REQUEST_BY_ID = "SELECT * FROM newaccountrequest WHERE id = ?";
	
	private static final String ADD_NOTIFICATION = "INSERT INTO notification (type, sender, date, issolved, isvisible, accountid) VALUES (?, ?, ?, ?, ?, ?)" ;
	private static final String ADD_EQUIPMENT_REQUEST = "INSERT INTO equipmentrequest VALUES (?, ?, ?, ?, ?)";
	private static final String ADD_MAINTENANCE_NOTIFICATION = "INSERT INTO maintenancenotification VALUES (?, ?)";
	private static final String ADD_MALFUNCTION_REQUEST = "INSERT INTO malfunctionrequest VALUES (?, ?, ?)";
	private static final String ADD_EQUIPMENT_CHECKOUT = "INSERT INTO equipmentcheckout VALUES (?, ?, ?, ?)";
	private static final String ADD_NEW_ACCOUNT_REQUEST = "INSERT INTO newacountrequest VALUES (?, ?)";

	private static final String RESOLVE_NOTIFICATION_BY_ID = "UPDATE notification SET issolved = TRUE WHERE id = ?";
	private static final String DELETE_NOTIFICATION_BY_ID = "UPDATE notification SET isvisible = TRUE WHERE id = ?";

	public NotificationManager() {
		// TODO Auto-generated constructor stub
	}
	
	public static final NotificationManager getInstance(){
		return singleton;
	}
	/**
	 * Get from the db all the visible notifications
	 * @return an array list with all the visible notifications
	 */
	public ArrayList<Notification> getNotifications(){
		
		ArrayList<Notification> result = new ArrayList<Notification>();
		Notification indRes;
		Connection conn = null;
		try {
			conn = DataSource.getInstance().getJDBCConnection();
			PreparedStatement stmt = conn.prepareStatement(GET_NOTIFICATIONS);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()){
				indRes = new Notification();
				createNotificationFromRS(indRes, rs);
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
	 * Add a notification to the db
	 * @param id
	 * @param type
	 * @param sender
	 * @param date
	 * @param isSolved
	 * @param isVisible
	 * @param receiverAccountId
	 * @param a
	 * @param b
	 * @param c
	 * @return return true if completed
	 */
	public boolean addNotification(int id, String type, String sender, Date date, boolean isSolved, boolean isVisible, int receiverAccountId, int a, int b, int c){
		
		Connection conn = null;
		try {
			conn = DataSource.getInstance().getJDBCConnection();
			PreparedStatement stmt = conn.prepareStatement(ADD_NOTIFICATION);
			//stmt.setInt(1, id);
			stmt.setString(1, type);
			stmt.setString(2, sender);
			stmt.setDate(3, date);
			stmt.setBoolean(4, isSolved);
			stmt.setBoolean(5, isVisible);
			stmt.setInt(6, receiverAccountId);
		
		PreparedStatement stmt1 = null;
		
		switch(type){
		case "EquipmentRequest":
			
			stmt1 = conn.prepareStatement(ADD_EQUIPMENT_REQUEST);
			stmt1.setInt(1,a);
			stmt1.setInt(2,b);
			stmt1.setInt(3,c);
			
			break;
		case "MaintenanceNotification":
			
			stmt1 = conn.prepareStatement(ADD_MAINTENANCE_NOTIFICATION);
			stmt1.setInt(1,a);
			
			break;
		case "MalfunctionRequest":
			
			stmt1 = conn.prepareStatement(ADD_MALFUNCTION_REQUEST);
			stmt1.setInt(1, a);
			stmt1.setInt(2, b);

			break;
		case "NewAccountRequest":
			
			stmt1 = conn.prepareStatement(ADD_NEW_ACCOUNT_REQUEST);
			stmt1.setInt(1, a);

			break;
		case "EquipmentCheckout":
			
			stmt1 = conn.prepareStatement(ADD_EQUIPMENT_CHECKOUT);
			stmt1.setInt(1, a);
			stmt1.setInt(2, b);

			break;
		case "General":
			break;
		}
		}
		catch(Exception e){
			System.out.println("Unable to add a notification, error:"+ e);
		}
		return true;
		
	}
	
	public Notification getNotificationById(int id){

		Notification result = null;
		Connection conn = null;
		try {
			
			conn = DataSource.getInstance().getJDBCConnection();
			PreparedStatement stmt = conn.prepareStatement(GET_NOTIFICATION_BY_ID);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()){
				result = new Notification();
				createNotificationFromRS(result, rs);
			}
			
			PreparedStatement stmt1 = null;
					
		
			switch(result.getType()){
			case "EquipmentRequest":
				
				stmt1 = conn.prepareStatement(GET_EQUIPMENT_REQUEST_BY_ID);
				
				break;
			case "MaintenanceNotification":
				
				stmt1 = conn.prepareStatement(GET_MAINTENANCE_NOTIFICATION_BY_ID);
				
				break;
			case "MalfunctionRequest":
				
				stmt1 = conn.prepareStatement(GET_MALFUNCTION_REQUEST_BY_ID);

				break;
			case "NewAccountRequest":
				
				stmt1 = conn.prepareStatement(GET_NEW_ACCOUNT_REQUEST_BY_ID);

				break;
			case "EquipmentCheckout":
				
				stmt1 = conn.prepareStatement(GET_EQUIPMENT_CHECKOUT_BY_ID);

				break;
			case "General":
				break;
			}
			
			ResultSet rs1 = stmt1.executeQuery();
			if (rs1.next()){
				createNotificationFromRS1(result, rs1);
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
	

	public boolean resolveNotification(int id){
		Connection conn = null;
		int status;
		try{
			conn = DataSource.getInstance().getJDBCConnection();
			
			PreparedStatement stmt = conn.prepareStatement(RESOLVE_NOTIFICATION_BY_ID);
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
	
	public boolean deleteNotification(int id){
		Connection conn = null;
		int status;
		try{
			conn = DataSource.getInstance().getJDBCConnection();
			
			PreparedStatement stmt = conn.prepareStatement(DELETE_NOTIFICATION_BY_ID);
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

	//For utility
	private void createNotificationFromRS(Notification a, ResultSet rs) throws Exception{
		//a.setId(rs.getInt(1));
		a.setType(rs.getString(1));
		a.setSender(rs.getString(2));
		a.setDate(rs.getDate(3));
		a.setSolved(rs.getBoolean(4));
		a.setVisible(rs.getBoolean(5));
		a.setReceiverAccountId(rs.getInt(6));
		
	}

	
	private void createNotificationFromRS1(Notification a, ResultSet rs) throws Exception{

		switch(a.getType()){
		case "EquipmentRequest":	
			((EquipmentRequest) a).setRequestingProjectId(rs.getInt(1));
			((EquipmentRequest) a).setRequestedEquipmentId(rs.getInt(2));
			((EquipmentRequest) a).setRequesterId(rs.getInt(3));
			break;
		case "MaintenanceNotification":
			((MaintenanceNotification) a).setPartId(rs.getInt(1));
			break;
		case "MalfunctionRequest":
			((MalfunctionRequest) a).setBrokenEquipmentId(rs.getInt(1));
			((MalfunctionRequest) a).setRequesterId(rs.getInt(2));
			break;
		case "NewAccountRequest":
			((NewAccountRequest) a).setNewAccountId(rs.getInt(1));
			break;
		case "EquipmentCheckout":
			((EquipmentCheckout) a).setEquipmentId(rs.getInt(1));
			((EquipmentCheckout) a).setRequesterId(rs.getInt(2));
			break;
		case "General":
			break;
		}
		
	}
	
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
