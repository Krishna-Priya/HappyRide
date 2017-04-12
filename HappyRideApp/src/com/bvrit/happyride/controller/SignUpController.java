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


public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
	System.out.println("in signup controller");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		UserDAO uDao = new UserDAO();
		
		//call addRound method()
		System.out.println("in signup controller");
		boolean result = uDao.signup(username, password);
		if(result){
			response.sendRedirect("login.jsp");
		}else{
			response.sendRedirect("signup.jsp");
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
