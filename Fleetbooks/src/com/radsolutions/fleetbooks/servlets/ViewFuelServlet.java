package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.FuelPurchase;
import com.radsolutions.fleetbooks.services.ProjectManager;

/**
 * @author Amado
 * Servlet implementation class ViewFuelServlet
 */
@WebServlet("/ViewFuelServlet")
public class ViewFuelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewFuelServlet() {
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
	 * Get all the fuel purchased from the db and present it to the 
	 * user
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProjectManager pm = ProjectManager.getInstance();
		ArrayList<FuelPurchase> fuels = pm.getProjectFuelPurchases(Integer.valueOf(request.getParameter("projectId")));
		
		request.setAttribute("fuels", fuels);
		
		String nextUrl = "./FuelAdmin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
