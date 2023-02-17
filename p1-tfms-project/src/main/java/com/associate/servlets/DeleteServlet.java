package com.associate.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.IOP.CodecFactory;

import com.revature.dao.impl.AssociateDaoImp;
import com.revature.jdbc.util.ConnectionFactory;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("Associate_id"));
		AssociateDaoImp dao= new AssociateDaoImp(ConnectionFactory.getConnection());
		boolean f= dao.deleteAssociateaDetails(id);
		System.out.println(f);
		HttpSession session=request.getSession();
		
		if(f) {
			session.setAttribute("succMsg","Student details Deleted sucessfully");
			response.sendRedirect("delete-edit-associate.jsp");
		}else {
			session.setAttribute("errorMsg","Something wrong on server");
			response.sendRedirect("delete-edit-associate.jsp");

		}
	}


}
