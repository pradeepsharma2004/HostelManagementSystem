package registration;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDAO;

/**
 * Servlet implementation class StudentRegistration
 */
@WebServlet("/studentRegistration")
public class StudentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		int regNum=Integer.parseInt(request.getParameter("sreg"));
		String name=request.getParameter("sname");
		String fatherName=request.getParameter("sfname");
		String day=request.getParameter("day");
		String month=request.getParameter("month");
		String year=request.getParameter("year");
		String dob=day+"-"+month+"-"+year;
		String mail=request.getParameter("smail");
		String mobile=request.getParameter("smobile");
		String password=request.getParameter("spassword");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String yearOfAdd=request.getParameter("addYear");
		String address=request.getParameter("address");
		String state=request.getParameter("state");
		String district=request.getParameter("district");
		String pin=request.getParameter("spin");
		String fatherContact=request.getParameter("sfather");
		String guardianName=request.getParameter("sGuardian");
		String guardianContact=request.getParameter("sGuardianContact");
		StudentDAO dao=new StudentDAO();
		if(dao.createStudent(regNum, name, fatherName, dob, mail, mobile, password, course, branch, yearOfAdd, address, state, district, pin, fatherContact, guardianName, guardianContact))
		{
			pw.println("Data Inserted Successfully");
		}
		else
		{
			pw.println("Error in insert..");
		}
	}

}
