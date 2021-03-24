package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class FlushUserCartDAO 
{
	public static int FlushCart(int cid)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection
					("jdbc:mysql://localhost/veggiemartdb", "root", "Siddhesh@1190");
			
			PreparedStatement ps=con.prepareStatement
			("delete from UserCart where cid=?");
			ps.setInt(1, cid);
			status=ps.executeUpdate();
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}

}
