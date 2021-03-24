package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.AddProductModel;
import com.model.NewFarmerRegistrationModel;

public class SearchFarmerDAO {
	
	public static NewFarmerRegistrationModel SearchFarmer(String e) 
	{
		NewFarmerRegistrationModel u= new NewFarmerRegistrationModel();
		try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
				PreparedStatement ps=con.prepareStatement("select * from farmerdetails where email=?");
				ps.setString(1,e);
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
					u.setEmail(rs.getString("email"));
					u.setQuestion(rs.getString("question"));
					u.setAnswer(rs.getString("answer"));
				}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return u;
		
	}
	
	public static int CheckAnswer(String answer,String e) 
	{
		
		try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
				PreparedStatement ps=con.prepareStatement("select answer from farmerdetails where email=?");
				ps.setString(1,e);
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
					if(answer==rs.getString("answer"))
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

	
	
	

}
