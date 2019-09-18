package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DAO.buyDAO;
import TO.buyTO;

public class BoardBWriteCommand implements BoardCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
	
		String path=request.getSession().getServletContext().getRealPath("upload");
		int sizeLimit = 1024*1024*25;
	     response.setContentType("text/plain;charset=UTF-8");
	     HttpSession session = request.getSession();
	     String id = session.getAttribute("sessionID").toString();

	   
	     try {

		MultipartRequest multi = new MultipartRequest(request,path,sizeLimit, new DefaultFileRenamePolicy());
	   // Enumeration files = multi.getFileNames();
	   // String file = (String)files.nextElement();
	    PrintWriter out = response.getWriter();

		buyTO g = new buyTO();
		
		g.setItem(new String(multi.getParameter("item").getBytes("iso-8859-1"),"UTF-8"));
		g.setPrice(new String(multi.getParameter("price").getBytes("iso-8859-1"),"UTF-8"));
		g.setDetail(new String(multi.getParameter("detail").getBytes("iso-8859-1"),"UTF-8"));
		g.setLocation(new String(multi.getParameter("location").getBytes("iso-8859-1"),"UTF-8"));
		g.setState(new String(multi.getParameter("state").getBytes("iso-8859-1"),"UTF-8"));	
		g.setUid(new String(multi.getParameter("uid").getBytes("iso-8859-1"),"UTF-8"));
		
		String imagename =multi.getFilesystemName("img");
		String fileFullPath  = path + "/"+ imagename;
		g.setImg(fileFullPath);
		g.setImagename("upload/"+imagename);
		

			buyDAO dao = new buyDAO();
			dao.insertDB(g);
	request.setAttribute("id", id);

	System.out.println(path);

	}catch(IOException e) {
		 e.printStackTrace();
	}
	}

}