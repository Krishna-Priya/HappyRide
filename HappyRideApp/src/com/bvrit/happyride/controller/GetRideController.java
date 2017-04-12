package com.bvrit.happyride.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.happyride.dao.CustomerDAO;
import com.bvrit.happyride.dao.UserDAO;


public class GetRideController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
		
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String username = request.getParameter("username");
		
		
		System.out.println(start);
		CustomerDAO cDAO = new CustomerDAO();
		
		//call addRound method()
		boolean result = cDAO.getride(start, end, username);
		HttpSession session = request.getSession();
		
		session.setAttribute("username", username);
	
		if(result){
			response.sendRedirect("driversList.jsp?location="+start+"&end="+end);
		}else{
			response.sendRedirect("getride.jsp");
		}
		
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			doProcess(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			doProcess(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
