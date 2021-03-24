package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.*;

public class UserCartDetailsDAO
{
	public static List<UserCartModel> getDetails(int cid)
	{
		List<UserCartModel> l=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection
			("jdbc:mysql://localhost/VeggieMartDB", "root", "Siddhesh@1190");
			
			PreparedStatement ps=con.prepareStatement
			("select * from usercart where cid=?");
			ps.setInt(1, cid);
			
			ResultSet rs=ps.executeQuery();
			l=new ArrayList<UserCartModel>();
			while(rs.next())
			{
				UserCartModel p=new UserCartModel();
				p.setPid(rs.getInt("pid"));
				p.setCid(rs.getInt("cid"));
				p.setQuantity(rs.getInt("quantity"));
				
				l.add(p);
			}
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return l;
	}

}
