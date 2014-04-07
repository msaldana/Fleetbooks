package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.Notification;
import com.radsolutions.fleetbooks.services.NotificationManager;

/**
 * @author Amado
 * Servlet implementation class EquipmentReturnServlet
 */
@WebServlet("/EquipmentReturnServlet")
public class EquipmentReturnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EquipmentReturnServlet() {
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
	 * Will get the equipment notification from the db to show it to the user
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.valueOf(request.getParameter("id"));
		
		
		
		NotificationManager nm = NotificationManager.getInstance();
		Notification notification = nm.getNotificationById(id);
		
		request.setAttribute("notification", notification);
		String nextUrl = "./EquipmentRequestNotification.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
