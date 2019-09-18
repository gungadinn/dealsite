package service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.buyDAO;
import TO.buyTO;

public class BoardBListCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
        String id = session.getAttribute("sessionID").toString();

		buyDAO dao = new buyDAO();
		
		
		ArrayList<buyTO> list = dao.getDBList();
		
		request.setAttribute("list", list);
		request.setAttribute("id", id);
	
		
	
	}//end execute

}//end classs
