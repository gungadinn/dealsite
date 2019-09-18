package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MessageDAO;
import TO.MessageTO;

public class BoardMviewCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	 MessageTO g = new MessageTO();
	 response.setCharacterEncoding("UTF-8");
	 int idx = Integer.parseInt(request.getParameter("mi_num"));
	 MessageDAO dao = new MessageDAO();
	
	 g= dao.getDB(idx);
	 request.setAttribute("data", g);
	

			
	 
	 
	 
	}
}