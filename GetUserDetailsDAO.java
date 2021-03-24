package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.NewUserRegistrationModel;

public class GetUserDetailsDAO {
	
	public static NewUserRegistrationModel GetUserDetails(int cid)
	{
		NewUserRegistrationModel u= new NewUserRegistrationModel();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection
					("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			PreparedStatement ps=con.prepareStatement
			("select * from UserDetails where id=?");
			ps.setInt(1,cid);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				u.setUname(rs.getString("uname"));
				u.setEmail(rs.getString("email"));
				u.setPno(rs.getString("pno"));
				u.setAddress(rs.getString("address"));
				u.setPincode(rs.getString("pincode"));
				u.setDob(rs.getString("dob"));
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return u;
		
		
		
	}

}
