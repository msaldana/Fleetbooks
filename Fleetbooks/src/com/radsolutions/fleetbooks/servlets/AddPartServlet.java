package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.Part;
import com.radsolutions.fleetbooks.services.PartManager;

/**
 * Servlet implementation class AddPartServlet
 */
@WebServlet("/AddPartServlet")
public class AddPartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPartServlet() {
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
		//Gets part information
		String name = request.getParameter("name");
		String brand = request.getParameter("brand");
		String number = request.getParameter("id");
		String price = request.getParameter("cost");
		String changeLimitHours = request.getParameter("usageLimit");
		int lastInstalledHours = 0;
		String parentEquipment = request.getParameter("equipment");
		
		//Create Part with received information
		Part part = new Part();
		
		part.setBrand(brand);
		part.setChangeLimitHours(Integer.valueOf(changeLimitHours));
		part.setLastInstalledHours(lastInstalledHours);
		part.setName(name);
		part.setNumber(number);
		part.setParentEquipment(Integer.valueOf(parentEquipment));
		part.setPrice(Float.valueOf(price));
		
		//Add part to db
		PartManager pm = PartManager.getInstance();
		pm.addPart(part);
		
		String nextUrl = "./PartsAdmin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
		
		
		
	}

}
