package service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.buyDAO;
import DAO.sellDAO;
import TO.buyTO;
import TO.sellTO;

public class BoardMYListCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
        String id = session.getAttribute("sessionID").toString();

		sellDAO dao = new sellDAO();	
		ArrayList<sellTO> list = dao.getIDList(id);		
		request.setAttribute("list", list);
		request.setAttribute("id", id);
		
		
		buyDAO dao2 =new buyDAO();
		ArrayList<buyTO> list2 = dao2.getIDList(id);
		request.setAttribute("list2", list2);
	
		
	
	}//end execute

}//end classs
