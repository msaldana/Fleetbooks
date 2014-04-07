package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.Equipment;
import com.radsolutions.fleetbooks.services.EquipmentManager;

/**
 * Servlet implementation class AddEquipmentServlet
 */
@WebServlet("/AddEquipmentServlet")
public class AddEquipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEquipmentServlet() {
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
		//Gets equipment information
		String companyId = request.getParameter("companyId");
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String year = request.getParameter("year");
		String type = request.getParameter("type");
		String vin = request.getParameter("vin");
		String value = request.getParameter("value");
		String usageHours = request.getParameter("usageHours");
		String monthlyCost = request.getParameter("monthlyCost");
		String weeklyCost = request.getParameter("weeklyCost");
		String dailyCost = request.getParameter("dailyCost");
		String note = request.getParameter("note");
		String isActive = request.getParameter("isActive");
		String isAvailable = request.getParameter("isAvailable");
		String isBilling = request.getParameter("isBilling");
		String location = request.getParameter("location");
		String pictureLink = request.getParameter("pictureLink");
		
		//Converts to boolean
		boolean isActiveBoolean;
		if(isActive.equals("Yes")){
			isActiveBoolean = true;
		}
		else{
			isActiveBoolean = false;
		}
		
		boolean isAvailableBoolean;
		if(isAvailable.equals("Yes")){
			isAvailableBoolean = true;
		}
		else{
			isAvailableBoolean = false;
		}
		
		boolean isBillingBoolean;
		if(isBilling.equals("Yes")){
			isBillingBoolean = true;
		}
		else{
			isBillingBoolean = false;
		}
		
		//Create Equipment with received information
		Equipment equipment = new Equipment();
		
		equipment.setActive(isActiveBoolean);
		equipment.setAvailable(isAvailableBoolean);
		equipment.setBilling(isBillingBoolean);
		equipment.setBrand(brand);
		equipment.setCompanyId(companyId);
		equipment.setDailyCost(Double.valueOf(dailyCost));
		equipment.setLocation(location);
		equipment.setModel(model);
		equipment.setMonthlyCost(Double.valueOf(monthlyCost));
		equipment.setNote(note);
		equipment.setPictureLink(pictureLink);
		equipment.setType(type);
		equipment.setUsageHours(Integer.valueOf(usageHours));
		equipment.setValue(Double.valueOf(value));
		equipment.setVin(vin);
		equipment.setWeeklyCost(Double.valueOf(weeklyCost));
		equipment.setYear(Integer.valueOf(year));
		
		//Add equipment to db
		EquipmentManager em = EquipmentManager.getInstance();
		em.addEquipment(equipment);
		
		String nextUrl = "./EquipmentAdmin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
