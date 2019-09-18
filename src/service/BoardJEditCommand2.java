package service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import DAO.MemberDAO;
import TO.MemberTO;

public class BoardJEditCommand2 implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		 HttpSession session = request.getSession();
		 String id = session.getAttribute("sessionID").toString();
	  
	
	   
	    MemberTO g = new MemberTO();
	
		request.setAttribute("id", id);
		g.setAddress(request.getParameter("address"));
		g.setId(request.getParameter("id"));
		g.setPassword(request.getParameter("password"));
		g.setGender(request.getParameter("gender"));
		g.setName(request.getParameter("name"));
		g.setPhone(request.getParameter("phone"));

			MemberDAO dao = new MemberDAO();
			dao.updateDB(g,id);
	 
	

	}
}