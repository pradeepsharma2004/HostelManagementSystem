package hostel;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;


@WebServlet("/roomcreate")
public class RoomCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomCreate() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hostelName=request.getParameter("hostelName");
		int floor=Integer.parseInt(request.getParameter("floor"));
		int room=Integer.parseInt(request.getParameter("room"));
		int bed=Integer.parseInt(request.getParameter("bed"));
		AdminDAO dao=new AdminDAO();
		PrintWriter out=response.getWriter();
		if(dao.generateRoom(hostelName, floor, room, bed))
		{
			out.println("success");
		}
	}

}