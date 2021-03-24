package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.AddProductModel;
import com.model.OrderModel;

public class ViewOrderDAO {
	
	public static List<OrderModel> ViewOrders()
	{
		List<OrderModel> l=null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement("select * from orderdetails");

			ResultSet rs=ps.executeQuery();
			l=new ArrayList<OrderModel>();
			
			while(rs.next())
			{
				OrderModel p= new OrderModel();
				p.setId(rs.getInt("id"));
				p.setCid(rs.getInt("cid"));
				p.setMode(rs.getString("mode"));
				p.setAddress(rs.getString("address"));
				p.setTotalamount(rs.getFloat("totalamount"));
				
				l.add(p);
				
			}
		}
	catch(Exception ex)
	{
		System.out.println(ex);
	}
		
	return l;
	
	}

}
