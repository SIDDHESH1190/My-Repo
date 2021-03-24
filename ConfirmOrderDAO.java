package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.model.ConfirmOrderModel;

public class ConfirmOrderDAO
{
	public static int placeOrder(ConfirmOrderModel om)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection
			("jdbc:mysql://localhost/veggiemartdb", "root", "Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement
			("insert into orderdetails values(?,?,?,?,?)");
			
			ps.setString(1, null);
			ps.setInt(2,om.getCid());
			ps.setFloat(3, om.getTotalAmount());
			ps.setString(4, om.getPaymentMode());
			ps.setString(5, om.getAdd());
			
			status=ps.executeUpdate();
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return status;
	}

}
