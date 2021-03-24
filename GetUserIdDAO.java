package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GetUserIdDAO
{
	public static int getID(String email)
	{
		int id=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection
		("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement
			("select id from UserDetails where email=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				id=rs.getInt("id");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return id;
	}

}
