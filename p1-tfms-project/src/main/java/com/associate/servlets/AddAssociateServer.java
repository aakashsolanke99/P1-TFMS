package com.associate.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.revature.dao.impl.AssociateDaoImp;
import com.revature.jdbc.util.ConnectionFactory;
import com.revature.model.Associate;

@WebServlet("/add-associate")
public class AddAssociateServer extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		doGet(request, response);
		
		String Associateid =request.getParameter("associate-id");
		String name =request.getParameter("name");
		String track =request.getParameter("track");
		String qualifia =request.getParameter("Qualification");
		String exp =request.getParameter("Experience");

		Associate associate= new Associate(Associateid,name,track,qualifia,exp);
		
		System.out.println(associate);
		AssociateDaoImp  ado=new AssociateDaoImp(ConnectionFactory.getConnection());
		HttpSession session=request.getSession();
		boolean f= ado.addDetails(associate);
		
		if(f) {
			session.setAttribute("succMsg","Student details submit sucessfully");
			response.sendRedirect("add-associate.jsp");
		}else {
			session.setAttribute("errorMsg","Something wrong on server");
			response.sendRedirect("add-associate.jsp");

		}
	}

}