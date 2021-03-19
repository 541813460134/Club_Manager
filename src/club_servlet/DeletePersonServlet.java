package club_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club_dao.Message_Dao;

public class DeletePersonServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       String s_number = request.getParameter("number");
		
       Message_Dao md = new Message_Dao();
       md.deletePerson(s_number);
		
   	request.getRequestDispatcher("FindBaseServlet").forward(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
