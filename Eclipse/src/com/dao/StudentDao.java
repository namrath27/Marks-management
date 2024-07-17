package com.dao;

import java.sql.*;
import java.util.*;
import com.bean.*;



public class StudentDao {
	
	public static List<Student> getAllRecords(){
		List<Student> list = new ArrayList<Student>();
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmarks","root", "root");
			
			PreparedStatement ps = con.prepareStatement("select * from studentmarks");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("student_name"));
				s.setMarks(rs.getInt("marks"));
				list.add(s);
			}
		}
		
		catch(Exception e){System.out.println(e);}
		return list;
	}
	
	
		
	public static int delete(Student s){
		int status=0;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmarks","root", "root");
			
			PreparedStatement ps = con.prepareStatement("delete from studentmarks where id=?");
			ps.setInt(1, s.getId());
			status = ps.executeUpdate();
		}
		catch(Exception e){System.out.println(e);}
		
		return status;
	}
}
