package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.model.AddProductModel;

public class SearchProductDAO {
	
	public static List<AddProductModel> SearchProduct(String product)
	{
	
		List<AddProductModel> l=null;
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
				PreparedStatement ps=con.prepareStatement("select * from ProductDetails where pname=?");
				ps.setString(1,product);
				ResultSet rs=ps.executeQuery();
				l=new ArrayList<AddProductModel>();
				
				while(rs.next())
				{
					AddProductModel p= new AddProductModel();
					
					p.setCategory(rs.getString("category"));
					p.setPname(rs.getString("pname"));
					p.setPrice(rs.getInt("price"));
					p.setStock(rs.getInt("stock"));
					p.setUnit(rs.getString("unit"));
					p.setDate(rs.getString("date"));
					p.setId(rs.getInt("id"));
					
					l.add(p);
					
				}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return l;
	}
	
	
	public static AddProductModel SearchProduct(int id)
	{
		AddProductModel p= new AddProductModel();
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
				PreparedStatement ps=con.prepareStatement("select * from ProductDetails where id=?");
				ps.setInt(1,id);
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
					p.setId(rs.getInt("id"));
					p.setCategory(rs.getString("category"));
					p.setPname(rs.getString("pname"));
					p.setPrice(rs.getInt("price"));
					p.setStock(rs.getInt("stock"));
					p.setUnit(rs.getString("unit"));
					p.setDate(rs.getString("date"));
					
				}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return p;
		
	}


}
