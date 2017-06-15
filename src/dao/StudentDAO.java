package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;

import com.mysql.fabric.xmlrpc.base.Data;

import sun.util.resources.cldr.aa.CalendarData_aa_ER;

public class StudentDAO 
{
	Connection con=null;
	Statement stmt=null;
	PreparedStatement ps=null;
	CallableStatement cs=null;
	ResultSet rs=null;
	public StudentDAO()
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
	public boolean createStudent(int regNumber,String name,String fatherName,String dob,String mail,String mobile,String password,String course, String branch, String yearOfAdd, String address, String state,String dist, String pin, String fatherContact, String localGadian, String gudianContact)
	{
		try
		{
			String sql="insert into student(regnumber,name,fathername,dob,mail,mobile,password,course,branch,yearofadd,address1,state,dist,pin,fathercontact,localgudian,localgudiancontact,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setInt(1,regNumber);
			ps.setString(2,name);
			ps.setString(3,fatherName);
			ps.setString(4,dob);
			ps.setString(5,mail);
			ps.setString(6, mobile);
			ps.setString(7,"student");
			ps.setString(8, course);
			ps.setString(9, branch);
			ps.setString(10, yearOfAdd);
			ps.setString(11, address);
			ps.setString(12, state);
			ps.setString(13, dist);
			ps.setString(14, pin);
			ps.setString(15, fatherContact);
			ps.setString(16, localGadian);
			ps.setString(17, gudianContact);
			ps.setInt(18, 0);
			ps.executeUpdate();
			return true;  
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public ResultSet viewStudentData(String course, String branch, String yearofadd)
	{
		try
		{
			String sql="select * from student where course='"+course+"' and branch='"+branch+"' and yearofadd='"+yearofadd+"'";
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
	public ResultSet viewStudentData()
	{
		try
		{
			String sql="select * from student";
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
	public boolean hostelAllot(String hName,int hId, int sreg)
	{
		try
		{
			String sql="update "+hName+" set regnumber="+sreg+" where id="+hId+"";
			stmt=con.createStatement();
			stmt.executeUpdate(sql);
			return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public ResultSet viewStudentData(int rno)
	{
		try
		{
			String sql="select * from student where regnumber="+rno;
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
	public ResultSet viewStudentDataPersonal(String mail){
		try
		{
			String sql="select * from student where mail="+mail;
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
	public ResultSet studentValidate(String userId, String password)
	{
		try
		{
			String sql="select * from student where ((mail=? OR mobile=?) AND password=?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,userId);
			ps.setString(2,userId);
			ps.setString(3,password);
			rs=ps.executeQuery();
			return rs;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public String updateUsername(String Regno,String new_mail){
		try
		{
			int reg_no=Integer.parseInt(Regno);
			String sql="update igit_db.student set mail="+"'"+new_mail+"'"+"where regnumber="+reg_no;
			stmt=con.createStatement();
			int result=0;
			result=stmt.executeUpdate(sql);
			if(result>0)
				return " username successfully updated.......";
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "username not updated.......";
	}
	public String updatePassword(String regno,String new_password,String old_password){
		try
		{
			int reg_no=Integer.parseInt(regno);
			String sql="update igit_db.student set password="+"'"+new_password+"'"+"where regnumber="+reg_no;
			stmt=con.createStatement();
			int result=0;
			result=stmt.executeUpdate(sql);
			if(result>0)
				return "password successfully updated.......";
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "password not updated.......";
	}
	public String postGrievance(String reg_no,String name,String description){
		try
		{
			Date d=new Date();
			String date=d.toString();
			String sql="insert into igit_db.grievance values(?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, reg_no);
			pst.setString(2, name);
			pst.setString(3, description);
			pst.setString(4, date);
			return "successful";
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "unsuccess";
	}
	
}
