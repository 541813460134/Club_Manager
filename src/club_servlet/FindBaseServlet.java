package club_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club_dao.Message_Dao;
import club_stu_meaasge.BaseMessage;
import club_stu_meaasge.Chatme;
import club_stu_meaasge.Others;

public class FindBaseServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		Message_Dao md = new Message_Dao();
		
		String nianji = request.getParameter("nianji");
		//System.out.println(nianji);
		if(nianji==null){
			nianji = "19";
		}
		//调用 业务逻辑
		List<BaseMessage> list = md.findBasePerson();
		List<Chatme> list2 = md.findChatPerson();
		List<Others> list3 = md.findOthers();
		
		List<BaseMessage> listout1 = new ArrayList<BaseMessage>();
		List<Chatme> listout2 = new ArrayList<Chatme>();
		List<Others> listout3 = new ArrayList<Others>();
		
		
		Iterator<BaseMessage> bm = list.iterator();
		while(bm.hasNext())
		{
			BaseMessage bme = bm.next();
			String s = bme.getS_number().substring(2,4);
			if(s.equals(nianji))
			{
				listout1.add(bme);
			}	
			
		}
		
		Iterator<Chatme> cm = list2.iterator();
		while(cm.hasNext())
		{
			Chatme cme = cm.next();
			String s = cme.getS_number().substring(2,4);
			if(s.equals(nianji))
			{
				listout2.add(cme);
			}	
			
		}
		
		Iterator<Others> os = list3.iterator();
		while(os.hasNext())
		{
			Others oes = os.next();
			String s = oes.getS_number().substring(2,4);
			if(s.equals(nianji))
			{
				listout3.add(oes);
			}	
			
		}
		
		
		//跳转页面
		request.setAttribute("daohang", nianji);
			request.setAttribute("personbase", listout1);//把list放入到request对象中
			request.setAttribute("personchat", listout2);//把list放入到request对象中
			request.setAttribute("personothers", listout3);//把list放入到request对象中
		//	System.out.println(list);
			request.getRequestDispatcher("/member-list.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request,response);
	}

}
