package service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MessageDAO;
import TO.MessageTO;

public class BoardMlistCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
        String id = session.getAttribute("sessionID").toString();

		MessageDAO dao = new MessageDAO();
		ArrayList<MessageTO> list = dao.getDBList(id);
		
		request.setAttribute("list", list);
		
		request.setAttribute("id", id);
		System.out.println();
		
	
	}//end execute

}//end classs
