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
 * Servlet implementation class AddEquipmentUsageReportServlet
 */
@WebServlet("/AddEquipmentUsageReportServlet")
public class AddEquipmentUsageReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEquipmentUsageReportServlet() {
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
		ReportManager rm = ReportManager.getInstance();
		
		String date = request.getParameter("Date");
		int projectId = Integer.valueOf(request.getParameter("ProjectId"));
		int equipmentId = Integer.valueOf(request.getParameter("equipmentId"));
		int usage = Integer.valueOf(request.getParameter("usage"));
		
		rm.submitEquipmentUsageReport(date, projectId, equipmentId, usage);
		
		
		String nextUrl = "./EquipmentUsageEng.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
