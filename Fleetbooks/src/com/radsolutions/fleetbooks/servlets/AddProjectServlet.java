package com.radsolutions.fleetbooks.servlets;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.radsolutions.fleetbooks.DTO.Project;
import com.radsolutions.fleetbooks.services.ProjectManager;

/**
 * Servlet implementation class AddProjectServlet
 */
@WebServlet("/AddProjectServlet")
public class AddProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProjectServlet() {
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
		//Gets project information
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String cost = request.getParameter("cost");
		String hasTank = request.getParameter("hasTank");
		String companyId = request.getParameter("companyId");
		String foreman = request.getParameter("foreman");
		
		//Converts hasTank String into boolean
		boolean hasTankBoolean;
		if(hasTank.equals("Yes")){
			hasTankBoolean = true;
		}
		else{
			hasTankBoolean = false;
		}
		
		//Create Project with received information
		Project project = new Project();
		project.setName(name);
		project.setLocation(location);
		project.setStartDate(Date.valueOf(startDate));
		project.setEndDate(Date.valueOf(endDate));
		project.setCost(Float.valueOf(cost));
		project.setHasFuelTank(hasTankBoolean);
		project.setCompanyID(companyId);
		project.setForeman(foreman);
		
		//Add project to db
		ProjectManager pm = ProjectManager.getInstance();
		
		pm.addProject(project);
		
		String nextUrl = "./ProjectsAdmin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextUrl); 
		dispatcher.forward(request, response);
		
	}

}
