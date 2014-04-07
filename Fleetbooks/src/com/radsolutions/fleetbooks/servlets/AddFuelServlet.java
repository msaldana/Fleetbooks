package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.FuelPurchase;
import com.radsolutions.fleetbooks.services.ProjectManager;

/**
 * Servlet implementation class AddFuelServlet
 */
@WebServlet("/AddFuelServlet")
public class AddFuelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFuelServlet() {
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
		
		//Get fuel information
		String date = request.getParameter("date");
		String gallons = request.getParameter("gallons");
		String price = request.getParameter("price");
		int tankProjectID = 1;
		
		//Create FuelPurchase with received information
		FuelPurchase fuelPurchase = new FuelPurchase();
		
		fuelPurchase.setDate(Date.valueOf(date));
		fuelPurchase.setGallons(Integer.valueOf(gallons));
		fuelPurchase.setPrice(Float.valueOf(price));
		fuelPurchase.setTankProjectID(tankProjectID);
		
		//Add FuelPurchase to db
		ProjectManager pm = ProjectManager.getInstance();
		pm.addFuelPurchase(fuelPurchase);
		
		String nextUrl = "./FuelAdmin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
