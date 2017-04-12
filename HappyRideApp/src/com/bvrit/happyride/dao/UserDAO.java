package com.bvrit.happyride.dao;
import java.beans.Statement;
import java.io.IOException;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class UserDAO {
	Connection con;
	ConnectionDAO cdao;
	PreparedStatement pst;
	Statement st;
	ResultSet rs;
	public UserDAO() throws ClassNotFoundException, SQLException {
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}

	public boolean login(String user, String password) throws ClassNotFoundException, SQLException{

	    pst = con.prepareStatement("select * from login where username =? and password =?");
	   System.out.println(pst);
	    pst.setString(1,user);
	    pst.setString(2, password);
	    rs = pst.executeQuery();
	    
	    if(rs.next()){
	    	return true;
	    }
	    return false;
	}
	public boolean signup(String user,String password)
			throws ClassNotFoundException,SQLException{
		System.out.println("in user dao");
				boolean result = false;
				pst = con.prepareStatement("insert into login values('"+user+"','"+password+"')");
				int ans = pst.executeUpdate();
				if(ans>0){
					result = true;
				}
				return result;
			}

}
