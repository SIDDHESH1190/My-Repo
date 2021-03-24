package com.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;



import com.model.*;

public class ProductStatusDAO
{
	public static List<AddProductModel> showStatus(String e)
	{
	
		List<AddProductModel> l=null;
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
				PreparedStatement ps=con.prepareStatement("select * from ProductDetails where email=?");
				ps.setString(1,e);
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
					p.setEmail(rs.getString("email"));
					
					l.add(p);
					
				}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return l;
	}
		
		
		public static List<AddProductModel> showProducts()
		{
		
			List<AddProductModel> l=null;
			try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
					PreparedStatement ps=con.prepareStatement("select * from ProductDetails");
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
						p.setEmail(rs.getString("email"));
						
						l.add(p);
						
					}
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return l;
		
	}
		

		public static List<AddProductModel> ShowProductsOfFruitsSection(String f)
		{
		
			List<AddProductModel> l=null;
			try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
					PreparedStatement ps=con.prepareStatement("select * from ProductDetails where category=?");
					ps.setString(1,f);
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
						
						l.add(p);
						
					}
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return l;
		
	}
	
		
		public static List<AddProductModel> ShowProductsOfVegetablesSection(String v)
		{
		
			List<AddProductModel> l=null;
			try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
					PreparedStatement ps=con.prepareStatement("select * from ProductDetails where category=?");
					ps.setString(1,v);
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
						
						l.add(p);
						
					}
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return l;
		
	}
		
		public static List<AddProductModel> AddProductFilter(String c,Float pr)
		{
			
			Float pr2=(float) 100000000;
			if(pr==0)
			{
				pr2=(float) 101;
			}
			else if(pr==100)
			{
				pr2=(float) 201;
			}
			else if(pr==200)
			{
				pr2=(float) 301;
			}
		
			List<AddProductModel> l=null;
			try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
					PreparedStatement ps=con.prepareStatement("select * from ProductDetails where category=? and price>? and price<? ");
					ps.setString(1,c);
					ps.setFloat(2,pr);
					ps.setFloat(3,pr2);
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
						
						l.add(p);
						
					}
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
		
	}
		
		public static AddProductModel ProductDetails(int pid)
		{
			AddProductModel p= new AddProductModel();
		
			try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
					PreparedStatement ps=con.prepareStatement("select * from ProductDetails where id=?");
					ps.setInt(1, pid);
					ResultSet rs=ps.executeQuery();
					
					if(rs.next())
					{
						
						p.setCategory(rs.getString("category"));
						p.setPname(rs.getString("pname"));
						p.setPrice(rs.getInt("price"));
						p.setStock(rs.getInt("stock"));
						p.setUnit(rs.getString("unit"));
						p.setDate(rs.getString("date"));
						
						
					}
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return p;
		
	}
		
		public static int CheckAvailability(String quantity,int pid)
		{
			
			int q=Integer.parseInt(quantity);
			try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
					PreparedStatement ps=con.prepareStatement("select * from productdetails where id=?");
					ps.setInt(1, pid);
					ResultSet rs=ps.executeQuery();
					//System.out.println(rs.getInt("id"));
					if(rs.next())
					{
					if(q<=rs.getInt("stock"))
					{
						return 1;
					}
					else
					{
						return 0;
					}
					}
					 			 
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
			return 0;

		}


	public static void UpdateProduct(int quantity,int pid)
	{
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
				PreparedStatement ps=con.prepareStatement("update ProductDetails set stock=? where id=?");
				ps.setInt(1, quantity);
				ps.setInt(2, pid);
				
				int i = ps.executeUpdate();
				 			 
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}

	}
	
}