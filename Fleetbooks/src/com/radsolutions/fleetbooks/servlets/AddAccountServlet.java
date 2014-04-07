package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.Account;
import com.radsolutions.fleetbooks.services.AccountManager;

/**
 * Servlet implementation class AddAccountServlet
 */
@WebServlet("/AddAccountServlet")
public class AddAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Get account information
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = "password";
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		boolean isApproved = true;
		
		//Create Account with received information
		Account account = new Account();
		
		account.setApproved(isApproved);
		account.setEmail(email);
		account.setFirstName(firstName);
		account.setLastName(lastName);
		account.setPassword(password);
		account.setPhone(phone);
		account.setType(type);
		
		//Add account to db
		AccountManager am = AccountManager.getInstance();
		am.addAccount(account);
		
		String nextUrl = "./UsersAdmin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
