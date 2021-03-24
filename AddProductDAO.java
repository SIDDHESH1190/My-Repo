package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.model.AddProductModel;

public class AddProductDAO {
	public static int  AddProductDetails(AddProductModel pm)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection
			("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement
			("insert into productdetails values(?,?,?,?,?,?,?,?)");
			ps.setString(1, null);
			ps.setString(2, pm.getCategory());
			ps.setString(3, pm.getPname());
			ps.setFloat(4, pm.getPrice());
			ps.setInt(5, pm.getStock());
			ps.setString(6, pm.getUnit());
			ps.setString(7, pm.getDate());
			ps.setString(8, pm.getEmail());
			
			
			status=ps.executeUpdate();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
}

