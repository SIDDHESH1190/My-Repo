package com.dao;

import java.sql.DriverManager;
import java.io.*;
import com.model.NewUserRegistrationModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class NewUserRegistrationDAO
{
	public static int NewUserDetails(NewUserRegistrationModel urm)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			
			PreparedStatement ps=con.prepareStatement("insert into UserDetails values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,null);
			ps.setString(2,urm.getUname());
			ps.setString(3,urm.getEmail());
			ps.setString(4,urm.getPno());
			ps.setString(5,urm.getAddress());
			ps.setString(6,urm.getPincode());
			ps.setString(7,urm.getPassword());
			ps.setString(8,urm.getQuestion());
			ps.setString(9,urm.getAnswer());
			ps.setString(10,urm.getDob());
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return status;
	}
	
	
	public static int UpdatePassword(NewUserRegistrationModel urm)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			
			PreparedStatement ps=con.prepareStatement("update userdetails set password=? where email=?");
			ps.setString(1,urm.getPassword());
			ps.setString(2,urm.getEmail());
			
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return status;
	}
	
	
}
