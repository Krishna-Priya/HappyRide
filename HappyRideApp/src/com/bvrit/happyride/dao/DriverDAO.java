package com.bvrit.happyride.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DriverDAO {
	Connection con;
	ConnectionDAO cdao;
	PreparedStatement pst;
	Statement st;
	ResultSet rs;
	public DriverDAO() throws ClassNotFoundException, SQLException {
		cdao = new ConnectionDAO();
		con = cdao.getConnection();
	}
	public ArrayList<Driver> getAllDrivers(String location) throws SQLException{
        ArrayList<Driver>  dd = new ArrayList<Driver>();
        try {
            pst =  con.prepareStatement("select * from driver where location ="+ "'"+location+"'");
        } catch (SQLException e) {
            System.out.println("error");
            e.printStackTrace();
        }
        try {
            rs=pst.executeQuery();
            } catch (SQLException e) {
            
            e.printStackTrace();
        }
        while(rs.next()){
            Driver d  = new Driver(rs.getString(1),rs.getString(2),(rs.getInt(3)));
            dd.add(d);
        }
        return  dd;
    }
	public int getFare(String start,String end) throws SQLException{
		pst =  con.prepareStatement("select fare from fare_list where (start = ? and end = ?) or( start = ? and end = ?)");
		pst.setString(1,start);
		pst.setString(2,end);
		pst.setString(3,end);
		pst.setString(4,start);
		System.out.println(pst); 
		rs=pst.executeQuery();
		 while(rs.next())
			 return rs.getInt(1);
		return 0;
	}

}
