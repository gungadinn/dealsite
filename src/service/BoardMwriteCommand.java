package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MessageDAO;
import TO.MessageTO;

public class BoardMwriteCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
		request.setCharacterEncoding("UTF-8");
	
	
	MessageTO g = new MessageTO();
	g.setMi_sendid(request.getParameter("mi_sendid"));
	g.setMi_receiveid(request.getParameter("mi_receiveid"));
	g.setMi_content(request.getParameter("mi_content"));

	MessageDAO dao =new MessageDAO();
	dao.insertDB(g);
		}catch(Exception e) {
			e.printStackTrace();
		}
}
}