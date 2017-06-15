package hostel;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;

/**
 * Servlet implementation class CreateHostel
 */
@WebServlet("/createHostel")
public class CreateHostel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateHostel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String hName=request.getParameter("hostel");
		String hostelType=request.getParameter("hostelType");
		String year=request.getParameter("year");
		AdminDAO dao=new AdminDAO();
		PrintWriter pw=response.getWriter();
		if(dao.createHostelTable(hName,hostelType,year))
		{
			pw.print("Create Table Succesfully....");
		}
	}

}
