package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.services.ReportManager;

/**
 * @author Amado
 * Servlet implementation class EquipmentUsageReportView
 */
@WebServlet("/EquipmentUsageReportView")
public class ViewEquipmentUsageReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewEquipmentUsageReportServlet() {
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
	 * get the data nedded for the report from the manager and present it to the user
	 * redirecting the user to the Equipment usage page
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ReportManager rm = ReportManager.getInstance();
		ResultSet report = rm.getEquipmentUsageReport(request.getParameter("sDate"), request.getParameter("eDate"), Integer.valueOf(request.getParameter("projectId")));
		
		request.setAttribute("report", report);
		
		String nextUrl = "./EquipmentUsageAdmin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
