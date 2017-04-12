package com.bvrit.happyride.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDAO {
	Connection con;
	ConnectionDAO cdao;
	PreparedStatement pst;
	Statement st;
	ResultSet rs;
	public CustomerDAO() throws ClassNotFoundException, SQLException {
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}
	public boolean getride(String start,String end,String username)
			throws ClassNotFoundException,SQLException{
		System.out.println("in user dao");
				boolean result = false;
				pst = con.prepareStatement("insert into customer values('"+start+"','"+end+"','"+username+"')");
				int ans = pst.executeUpdate();
				if(ans>0){
					result = true;
				}
				return result;
			}

}
