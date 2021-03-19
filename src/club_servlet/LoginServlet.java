package club_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club_dao.Message_Dao;


@WebServlet("/servlet/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String s_number = request.getParameter("s_number");
		String password = request.getParameter("s_password");
		
//		System.out.println("’À∫≈:"+s_number);
//		System.out.println("√‹¬Î:"+password);
		
		Message_Dao md = new Message_Dao();
		
		String[] ps = md.getPassword();
//		System.out.println(ps[1]);
//		System.out.println(ps[2]);
		
		
		if(ps[1].equals(s_number) && ps[2].equals(password))
		{
			request.getRequestDispatcher("FindBaseServlet").forward(request, response);
		}
		else
		{
			response.sendRedirect("/CxjdDemo2/login.jsp");
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
