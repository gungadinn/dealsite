package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardBDeleteCommand;
import service.BoardBEditCommand;
import service.BoardBEditCommand2;
import service.BoardBListCommand;
import service.BoardBViewCommand;
import service.BoardBWriteCommand;
import service.BoardCommand;
import service.BoardDeleteCommand;
import service.BoardEditCommand;
import service.BoardEditCommand2;
import service.BoardJEditCommand;
import service.BoardJEditCommand2;
import service.BoardJoinCommand;
import service.BoardListCommand;
import service.BoardLoginCommand;
import service.BoardLogoutCommand;
import service.BoardMYListCommand;
import service.BoardMlistCommand;
import service.BoardMviewCommand;
import service.BoardMwriteCommand;
import service.BoardViewCommand;
import service.BoardWriteCommand;


@WebServlet("*.do")
public class BoardFrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String com = requestURI.substring(contextPath.length());

		
		BoardCommand command  = null;
		String nextPage = null;
		
		
		if(com.equals("/sell_list.do")){
			command = new BoardListCommand();
			command.execute(request, response);
			nextPage = "sell_list.jsp";
		}
		if(com.equals("/buy_list.do")){
			command = new BoardBListCommand();
			command.execute(request, response);
			nextPage = "buy_list.jsp";
		}
	
		if(com.equals("/write.do")){
			command = new BoardWriteCommand();
			command.execute(request, response);
			nextPage = "sell_list.do";
		}
		if(com.equals("/write2.do")){
			command = new BoardBWriteCommand();
			command.execute(request, response);
			nextPage = "buy_list.do";
		}
		if(com.equals("/logout.do")){
			command = new BoardLogoutCommand();
			command.execute(request, response);
			nextPage = "login.jsp";
		}
		if(com.equals("/login.do")) {
			command = new BoardLoginCommand();
			command.execute(request, response);
			
		}
		if(com.equals("/sell_edit.do")) {
			command = new BoardEditCommand();
			command.execute(request, response);
			nextPage = "sell_edit_form.jsp";
		}
		if(com.equals("/edit2.do")) {
			command = new BoardEditCommand2();
			command.execute(request, response);
			nextPage = "sell_list.do";
		}
		if(com.equals("/buy_edit.do")) {
			command = new BoardBEditCommand();
			command.execute(request, response);
			nextPage = "buy_edit_form.jsp";
		}
		if(com.equals("/buy_edit2.do")) {
			command = new BoardBEditCommand2();
			command.execute(request, response);
			nextPage = "buy_list.do";
		}
		if(com.equals("/join_edit.do")) {
			command = new BoardJEditCommand();
			command.execute(request, response);
			nextPage = "JoinEdit.jsp";
		}
		if(com.equals("/join_edit2.do")) {
			command = new BoardJEditCommand2();
			command.execute(request, response);
			nextPage = "mypage.do";
		}
		

		if(com.equals("/sell_view.do")){
			command = new BoardViewCommand();
			command.execute(request, response);
			nextPage = "sell_view.jsp";
		}	

		if(com.equals("/buy_view.do")){
			command = new BoardBViewCommand();
			command.execute(request, response);
			nextPage = "buy_view.jsp";
		}	
	
		if(com.equals("/sell_delete.do")){
			command = new BoardDeleteCommand();
			command.execute(request, response);
			nextPage = "sell_list.do";
		}	
		if(com.equals("/buy_delete.do")){
			command = new BoardBDeleteCommand();
			command.execute(request, response);
			nextPage = "buy_list.do";
		}	
		if(com.equals("/mypage.do")){
			command = new BoardMYListCommand();
			command.execute(request, response);
			nextPage = "mypage.jsp";
		}
		if(com.equals("/join.do")){
			command = new BoardJoinCommand();
			command.execute(request, response);
			nextPage = "login.jsp";
		}
		if(com.equals("/messeage_write.do")){
			command = new BoardMwriteCommand();
			command.execute(request, response);
			nextPage = "message_list.do";
		}
		if(com.equals("/message_list.do")){
			command = new BoardMlistCommand();
			command.execute(request, response);
			nextPage = "message_list.jsp";
		}	
		if(com.equals("/message_view.do")){
			command = new BoardMviewCommand();
			command.execute(request, response);
			nextPage = "message_view.jsp";
		}	
		RequestDispatcher dis = request.getRequestDispatcher(nextPage);
		dis.forward(request, response);

	}//

}
