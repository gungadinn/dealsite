package service;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import TO.MemberTO;

public class BoardJoinCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
	MemberTO g = new MemberTO();
	g.setAddress(request.getParameter("address"));
	g.setBirthdd(request.getParameter("birthdd"));
	g.setBirthmm(request.getParameter("birthmm"));
	g.setBirthyy(request.getParameter("birthyy"));
	g.setId(request.getParameter("id"));
	g.setPassword(request.getParameter("password"));
	g.setGender(request.getParameter("gender"));
	g.setMail1(request.getParameter("mail1"));
	g.setMail2(request.getParameter("mail2"));
	g.setName(request.getParameter("name"));
	g.setPhone(request.getParameter("phone"));
	
	MemberDAO dao  = new MemberDAO();
	try{
		dao.insertMember(g);
	}catch(SQLException e) {
		e.printStackTrace();
	}
	
	 
	}
}