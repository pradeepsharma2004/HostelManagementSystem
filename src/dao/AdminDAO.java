package dao;
import java.sql.*;
public class AdminDAO 
{
	Connection con=null;
	Statement stmt=null;
	PreparedStatement ps=null;
	CallableStatement cs=null;
	ResultSet rs=null;
	public AdminDAO()
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
	public boolean createStaff(String name,String mail,String mobile,String password,String department,String role)
	{
		try
		{
			String sql="insert into staff values(?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,mail);
			ps.setString(3,mobile);
			ps.setString(4,password);
			ps.setString(5,department);
			ps.setString(6, role);
			ps.executeUpdate();
			return true;  
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public ResultSet adminValidate(String userId, String password,String role)
	{
		try
		{
			String sql="select * from staff where ((mail=? OR mobile=?) AND password=?) AND role=?";
			ps=con.prepareStatement(sql);
			ps.setString(1,userId);
			ps.setString(2,userId);
			ps.setString(3,password);
			ps.setString(4,role);
			rs=ps.executeQuery();
			return rs;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	//Hostel Code Start
	public boolean createHostelTable(String hostelName, String hostelType,String year)
	{
		String hName=hostelName;
		String arr[] = hName.split(" ", 2);
		String tableName = arr[0];
		try
		{
			String sql="create table "+tableName+"(id int primary key auto_increment,floor varchar(100), room varchar(100), bednumber varchar(10), regnumber int null)";
			stmt=con.createStatement();
			stmt.executeUpdate(sql);
			String sql1="insert into hostel(hostelname,tablename,type,year) values('"+hostelName+"','"+tableName+"','"+hostelType+"','"+year+"')";
			stmt.executeUpdate(sql1);
			return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public ResultSet showTables()
	{
		try
		{
			 String sql="select * from hostel";
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
	public boolean generateRoom(String tableName,int floor,int room,int bed)
	{
		String sql="";
		int b=1,r=100;
		int floor1,room1,bed1;
		try
		{
			for(floor1=1;floor1<=floor;floor1++)
			{
				for(room1=1;room1<=room;room1++)
				{
					for(bed1=1;bed1<=bed;bed1++,b++)
					{
					String f=Integer.toString(floor1);
					String ro=Integer.toString(r+room1);
					String be="B-"+Integer.toString(b);
					sql="insert into "+tableName+"(floor,room,bednumber) values('"+f+"','"+ro+"','"+be+"')";
					stmt=con.createStatement();
					stmt.executeUpdate(sql);
					}
				}
				r=r+100;
			}
			return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	/*------------------------------------------------*/
	//Show Hostel Table Data
	public ResultSet viewHostelData(String hostelName)
	{
		try
		{
			 String sql="select * from "+hostelName+" ORDER BY floor";
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
	//Hostel Code Ends
	//View State and District
	public ResultSet viewStates()
	{
		try
		{
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from states");
		return rs;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public ResultSet viewDistricts()
	{
		try
		{
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from districts");
		return rs;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public boolean postNotice(String noticeHeading, String noticeDescription)
	{
		try
		{
			String sql="insert into notice(noticedate,noticeheading,noticedescription) values(CURDATE(),?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,noticeHeading);
			ps.setString(2,noticeDescription);
			ps.executeUpdate();
			return true;  
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public ResultSet viewNotices()
	{
		try
		{
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from notice");
		return rs;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public ResultSet viewGrievance()
	{
		try
		{
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from grievance");
		return rs;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public String deleteNotice(int id)
	{
		try
		{
		stmt=con.createStatement();
		stmt.executeUpdate("delete from notice where id="+id);
		return "Delete Success...";
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Can Not Delete..";
	}
	public ResultSet Username(){
		try
		{
			String sql="select mail from staff where role='Administrator'";
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
	public String updateUsername(String mail1,String mail2){
		try
		{
			String sql="update igit_db.staff set mail="+"'"+mail1+"'"+"where mail="+"'"+mail2+"'";
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
	public String updatePassword(String mail,String new_password,String old_password){
		try
		{
			String sql="update staff set password="+"'"+new_password+"'"+"where mail="+"'"+mail;
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
	public String resetWardenPassword(String mail){
		try
		{
			String sql="update igit_db.staff set password='1' where mail="+"'"+mail+"'";
			stmt=con.createStatement();
			int result=0;
			result=stmt.executeUpdate(sql);
			if(result>0)
				return "password reset successful.......";
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "password reset unsuccessful.......";
	}
}
