package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.buyDAO;
import TO.buyTO;

public class BoardBEditCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	 HttpSession session = request.getSession();
	 String id = session.getAttribute("sessionID").toString();
	 buyTO g = new buyTO();
	 
	 int idx = Integer.parseInt(request.getParameter("idx"));
	 buyDAO dao = new buyDAO();
	 g= dao.getDB(idx);
	 request.setAttribute("data", g);	
	 request.setAttribute("id", id);
	

	 
	}
}