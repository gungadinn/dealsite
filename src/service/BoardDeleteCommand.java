package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.sellDAO;

public class BoardDeleteCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		 HttpSession session = request.getSession();
	
	int idx= Integer.parseInt(request.getParameter("idx"));
	
	
	 sellDAO dao = new sellDAO();
	 dao.deleteDB(idx);
	
	
	 
	}
}