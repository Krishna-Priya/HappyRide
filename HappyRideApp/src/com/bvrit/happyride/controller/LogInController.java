package com.bvrit.happyride.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.happyride.dao.UserDAO;


public class LogInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		UserDAO uDao = new UserDAO();
		
		//call addRound method()
		boolean result = uDao.login(username, password);
		HttpSession session = request.getSession();
		
		session.setAttribute("username", username);
	
		if(result){
			response.sendRedirect("home.jsp");
		}else{
			response.sendRedirect("login.jsp");
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
