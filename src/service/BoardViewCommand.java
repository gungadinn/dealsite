package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.sellDAO;
import TO.sellTO;

public class BoardViewCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int hit;
	 sellTO g = new sellTO();
	 response.setCharacterEncoding("UTF-8");
	 int idx = Integer.parseInt(request.getParameter("idx"));
	 sellDAO dao = new sellDAO();
	 g= dao.getDB(idx);
	 

	 request.setAttribute("data", g);
	

			
	 
	 
	 
	}
}