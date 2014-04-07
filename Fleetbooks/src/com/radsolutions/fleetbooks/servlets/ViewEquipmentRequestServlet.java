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
 * Servlet implementation class ViewEquipmentRequestServlet
 */
@WebServlet("/ViewEquipmentRequestServlet")
public class ViewEquipmentRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewEquipmentRequestServlet() {
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
	 * Take the equipment request selected by the user and present the data to the user
	 * redirecting the user to the equipment notification page
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
