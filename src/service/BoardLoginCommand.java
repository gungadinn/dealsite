package service;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MemberDAO;

public class BoardLoginCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
	HttpSession session=request.getSession();
	
	 String uid = request.getParameter("uid");
	 String upw = request.getParameter("upw");
	 String nextPage = null;
	 
	 MemberDAO dao = new MemberDAO();
	 
	int result= dao.loginCheck(uid, upw);
	
	if(result==1) {
		session.setAttribute("sessionID", uid);
		System.out.println(result);
		nextPage ="sell_list.do";
	}
	else{
		nextPage="login2.jsp";
	}
	try {
	RequestDispatcher dis = request.getRequestDispatcher(nextPage);
	dis.forward(request, response);
	}catch(IOException | ServletException e) {
		e.printStackTrace();
	}
}
}