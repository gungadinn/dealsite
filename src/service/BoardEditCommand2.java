package service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import DAO.sellDAO;
import TO.sellTO;

public class BoardEditCommand2 implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		 HttpSession session = request.getSession();
		 String id = session.getAttribute("sessionID").toString();
		String path=request.getSession().getServletContext().getRealPath("/upload");
		
	     response.setContentType("text/plain;charset=UTF-8");
	     try {
	   
		MultipartRequest multi = new MultipartRequest(request,path);
	   
	    sellTO g = new sellTO();
		g.setNum(Integer.parseInt(multi.getParameter("idx")));
		g.setItem(new String(multi.getParameter("item").getBytes("iso-8859-1"),"UTF-8"));
		g.setPrice(new String(multi.getParameter("price").getBytes("iso-8859-1"),"UTF-8"));
		g.setDetail(new String(multi.getParameter("detail").getBytes("iso-8859-1"),"UTF-8"));
		g.setLocation(new String(multi.getParameter("location").getBytes("iso-8859-1"),"UTF-8"));
		g.setState(new String(multi.getParameter("state").getBytes("iso-8859-1"),"UTF-8"));	
		String imagename =multi.getFilesystemName("img");
		String fileFullPath  = path + "/"+ imagename;
		g.setImg(fileFullPath);
		g.setImagename("upload/"+imagename);
		request.setAttribute("id", id);
		

			sellDAO dao = new sellDAO();
			dao.updateDB(g);
	 
	 	}catch(IOException e) {
			 e.printStackTrace();
		}
		}

	}