package club_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club_dao.Message_Dao;
import club_stu_meaasge.AllMessage;
import club_stu_meaasge.BaseMessage;
import club_stu_meaasge.Chatme;
import club_stu_meaasge.Others;

public class FindPersonBynumServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String s_number = request.getParameter("s_number");
		
		Message_Dao  md = new Message_Dao();
		
		BaseMessage bm = md.findpersonbynum(s_number);
		
		Chatme cm =md.findpersonbynum2(s_number);
		Others ot = md.findpersonbynum3(s_number);
		
		System.out.println(s_number);
		
		
		request.setAttribute("bm",bm);
		request.setAttribute("cm", cm);
		request.setAttribute("ot", ot);
		
		if(bm.getS_sex().equals("��"))
		request.setAttribute("sex",0);
		else
		request.setAttribute("sex",1);
		
		if(ot.getO_isg().equals("��"))
		request.setAttribute("isg",0);
		else
		request.setAttribute("isg",1);	
		
		
		
		request.getRequestDispatcher("/member-edit.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	
	}

}
