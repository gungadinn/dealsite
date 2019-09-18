package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.sellDAO;
import TO.sellTO;

public class BoardEditCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	 HttpSession session = request.getSession();
	 String id = session.getAttribute("sessionID").toString();
	 sellTO g = new sellTO();
	 
	 int idx = Integer.parseInt(request.getParameter("idx"));
	 sellDAO dao = new sellDAO();
	 g= dao.getDB(idx);
	 


	 request.setAttribute("data", g);	
	 request.setAttribute("id", id);
	

	 
	}
}