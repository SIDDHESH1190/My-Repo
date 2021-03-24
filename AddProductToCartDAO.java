package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class AddProductToCartDAO
{
	public static int addToCart(int pid,int cid,String quantity)
	{
		
		int q=Integer.parseInt(quantity);
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection
			("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement
			("insert into UserCart values(?,?,?)");
			ps.setInt(1, cid);
			ps.setInt(2, pid);
			ps.setInt(3, q);
		
			status=ps.executeUpdate();
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return status;
	}

}
