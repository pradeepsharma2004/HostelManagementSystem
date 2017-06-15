package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import dao.StudentDAO;


@WebServlet("/login")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		//pw.println("Hello"); 
		String userId=request.getParameter("uid");
		String password=request.getParameter("pwd");
		String loginAs=request.getParameter("loginAs");
		RequestDispatcher rd=null;
		ResultSet rs=null;
		switch(loginAs)
		{
		case "Administrator":
		{
			AdminDAO dao=new AdminDAO();
			try
			{
			rs=dao.adminValidate(userId, password, loginAs);
			if(rs.next())
			{
				rd=request.getRequestDispatcher("adminPanel.jsp");
				request.setAttribute("name",rs.getString(1));
				request.setAttribute("mail",rs.getString(2));
				rd.forward(request,response);
			}
			else
			{
				String error="You are Not an Administrator! Login Failed.";
				rd=request.getRequestDispatcher("invalidLogin.jsp");
				request.setAttribute("error",error);
				rd.forward(request,response);
			}
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			break;
		}
		case "Student":
		{
			StudentDAO dao=new StudentDAO();
			try
			{
			rs=dao.studentValidate(userId, password);
			if(rs.next())
			{
				rd=request.getRequestDispatcher("studentPanel.jsp");
				request.setAttribute("id",rs.getInt(1));
				request.setAttribute("name",rs.getString(2));
				request.setAttribute("mail",rs.getString(5));
				rd.forward(request,response);
			}
			else
			{
				String error="You are Not an Administrator! Login Failed.";
				rd=request.getRequestDispatcher("invalidLogin.jsp");
				request.setAttribute("error",error);
				rd.forward(request,response);
			}
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			break;
		}
		case "Warden":
		{
			AdminDAO dao=new AdminDAO();
			try
			{
			rs=dao.adminValidate(userId, password, loginAs);
			if(rs.next())
			{
				rd=request.getRequestDispatcher("wardenPanel.jsp");
				request.setAttribute("name",rs.getString(1));
				request.setAttribute("mail",rs.getString(2));
				rd.forward(request,response);
			}
			else
			{
				String error="You are Not Warden! Login Failed.";
				rd=request.getRequestDispatcher("invalidLogin.jsp");
				request.setAttribute("error",error);
				rd.forward(request,response);
			}
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			break;
		}
		default:
		{
			response.sendRedirect("login.jsp");
		}
		}
	}

}
