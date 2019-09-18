package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.buyDAO;
import TO.buyTO;

public class BoardBViewCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int hit;
	 buyTO g = new buyTO();
	 response.setCharacterEncoding("UTF-8");
	 int idx = Integer.parseInt(request.getParameter("idx"));
	 buyDAO dao = new buyDAO();
	 g= dao.getDB(idx);
	 

	 request.setAttribute("data", g);
	 
			
	 
	 
	 
	}
}