package com.radsolutions.fleetbooks.servlets;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.Account;
import com.radsolutions.fleetbooks.services.AccountManager;
import com.radsolutions.fleetbooks.services.MailManager;

/**
 * Servlet implementation class MobileAccountRecoveryServlet
 */
@WebServlet("/MobileAccountRecoveryServlet")
public class MobileAccountRecoveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileAccountRecoveryServlet() {
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
		String email = request.getParameter("email");
		
		AccountManager am = AccountManager.getInstance();
		
		Account account = null;
	 	account = am.getUserByEmail(email);
	 	
	 	String status = "";
	 	if(account==null){
	 		status = "Invalid email";
	 	}
	 	else{
	 		account.setNeedReset(true);
	 		MailManager em = MailManager.getInstance();
	 		em.sendPasswordRecoveryLink(email, "www.google.com");
	 		
	 		status = "Completed";
	 	}

	 	response.setCharacterEncoding("UTF-8");
	 	response.getWriter().println(status);
	}

}
