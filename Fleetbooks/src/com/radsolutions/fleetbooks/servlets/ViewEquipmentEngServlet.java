package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.Equipment;
import com.radsolutions.fleetbooks.services.EquipmentManager;

/**
 * @author Amado
 * Servlet implementation class ViewEquipmentEngServlet
 */
@WebServlet("/ViewEquipmentEngServlet")
public class ViewEquipmentEngServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewEquipmentEngServlet() {
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
	 * Take the equipments from the db and show them to the user
	 * redirecting him to the Equipment page
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EquipmentManager em = EquipmentManager.getInstance();
		ArrayList<Equipment> equipment = em.getEquipmentOrderedByType();
		
		request.setAttribute("equipment", equipment);
		String nextUrl = "./EquipmentEng.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
	}

}
