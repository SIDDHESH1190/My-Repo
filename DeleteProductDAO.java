package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeleteProductDAO 
{
	public static int DeleteProduct(int id)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection
					("jdbc:mysql://localhost/VeggieMartDB","root","Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement
			("delete from ProductDetails where id=?");
			ps.setInt(1, id);
			
			status=ps.executeUpdate();
			
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return status;
	}

}
