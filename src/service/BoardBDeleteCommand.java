package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.buyDAO;

public class BoardBDeleteCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		 HttpSession session = request.getSession();
	
	int idx= Integer.parseInt(request.getParameter("idx"));
	
	
	 buyDAO dao = new buyDAO();
	 dao.deleteDB(idx);
	
	
	 
	}
}