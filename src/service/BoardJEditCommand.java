package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MemberDAO;
import TO.MemberTO;

public class BoardJEditCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	 HttpSession session = request.getSession();
	 String id = session.getAttribute("sessionID").toString();
	 MemberTO g = new MemberTO();
	 

	 MemberDAO dao = new MemberDAO();
	 g= dao.getDB(id);
	 request.setAttribute("data", g);	
	 request.setAttribute("id", id);
	

	 
	}
}