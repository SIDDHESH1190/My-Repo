package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.model.NewFarmerRegistrationModel;
import com.model.NewUserRegistrationModel;

public class NewFarmerRegistrationDAO
{
	public static int NewFarmerDetails(NewFarmerRegistrationModel frm)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			
			PreparedStatement ps=con.prepareStatement("insert into FarmerDetails values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,null);
			ps.setString(2,frm.getName());
			ps.setString(3,frm.getEmail());
			ps.setString(4,frm.getPno());
			ps.setString(5,frm.getAddress());
			ps.setString(6,frm.getPincode());
			ps.setString(7,frm.getPassword());
			ps.setString(8,frm.getQuestion());
			ps.setString(9,frm.getAnswer());
			ps.setString(10,frm.getDob());
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return status;

	}
	
	public static int UpdatePassword(NewFarmerRegistrationModel frm)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			
			PreparedStatement ps=con.prepareStatement("update userdetails set password=? where email=?");
			ps.setString(1,frm.getPassword());
			ps.setString(2,frm.getEmail());
			
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return status;
	}
	
}
