package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class WardenDAO
{
	Connection con=null;
	Statement stmt=null;
	PreparedStatement ps=null;
	CallableStatement cs=null;
	ResultSet rs=null;
	public WardenDAO()
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/igit_db","root","Pradeep@1997");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	public String updateUsername(String new_username,String old_username){
		try
		{
			String sql="update igit_db.staff set mail="+"'"+new_username+"'"+"where mail="+"'"+old_username+"'";
			stmt=con.createStatement();
			int result=0;
			result=stmt.executeUpdate(sql);
			if(result>0)
				return " username successfully updated.......";
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "username not updated.......";
	}
	public String resetStudentPassword(String reg_no){
		try
		{
			int reg_no1=Integer.parseInt(reg_no);
			String sql="update igit_db.student set password='1' where regnumber="+reg_no1;
			stmt=con.createStatement();
			int result=0;
			result=stmt.executeUpdate(sql);
			if(result>0)
				return "password reset successful.......";
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "password reset unsuccessful.......";
	}
	public String updatePassword(String new_password,String old_password){
		try
		{
			String sql="update igit_db.staff set password="+"'"+new_password+"'"+"where password="+"'"+old_password+"'";
			stmt=con.createStatement();
			int result=0;
			result=stmt.executeUpdate(sql);
			if(result>0)
				return "password successfully updated.......";
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "password not updated.......";
	}
	public ResultSet viewWardenDataPersonal(String mail){
		try
		{
			String sql="select * from staff where mail="+"'"+mail+"'";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			return rs;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
}
