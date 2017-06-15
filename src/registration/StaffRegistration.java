package registration;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;

/**
 * Servlet implementation class StaffRegistration
 */
@WebServlet("/staffRegistration")
public class StaffRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		pw.print("Connect");
		String name=request.getParameter("empname");
		String mail=request.getParameter("empmail");
		String password=request.getParameter("emppwd");
		String mobile=request.getParameter("empmobile");
		String department=request.getParameter("empdept");
		String role=request.getParameter("emprole");
		AdminDAO dao=new AdminDAO();
		if(dao.createStaff(name, mail, mobile, password, department, role))
		{
			response.sendRedirect("registrationSuccess.jsp");
		}
	}

}
