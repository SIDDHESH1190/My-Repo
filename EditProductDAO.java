package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.model.AddProductModel;

public class EditProductDAO {
	
	public static int EditProductDetails(AddProductModel p,int id)
	{
		int status=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection
		("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement
("update ProductDetails set category=? , pname=?, price=?,stock=?,unit=?,date=? where id=?");
			ps.setString(1, p.getCategory());
			ps.setString(2, p.getPname());
			ps.setFloat(3, p.getPrice());
			ps.setInt(4, p.getStock());
			ps.setString(5, p.getUnit());
			ps.setString(6, p.getDate());
			ps.setInt(7,id);
			
			status=ps.executeUpdate();
		}
		catch (Exception e) {
			// TODO: han1dle exception
			System.out.println(e);
		}
		
		return status;
	}
}
