package com.associate.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revature.dao.impl.AssociateDaoImp;
import com.revature.jdbc.util.ConnectionFactory;
import com.revature.model.Associate;


@WebServlet("/edit_associate")
public class EditAssociateServer extends HttpServlet {

    public EditAssociateServer() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Associateid =request.getParameter("associate-id");
		System.out.println(Associateid);
		String name =request.getParameter("name");
		String track =request.getParameter("track");
		String qualifia =request.getParameter("Qualification");
		String exp =request.getParameter("Experience");

		Associate associate= new Associate(Associateid,name,track,qualifia,exp);
		
		System.out.println(associate);
		AssociateDaoImp  ado=new AssociateDaoImp(ConnectionFactory.getConnection());
		HttpSession session=request.getSession();
		
		boolean f=ado.EditAssociateDetails(associate);
		
		if(f) {
			session.setAttribute("succMsg","Student details update sucessfully");
			response.sendRedirect("delete-edit-associate.jsp");
		}else {
			session.setAttribute("errorMsg","Something wrong on server");
			response.sendRedirect("delete-edit-associate.jsp");

		}

		
	}

}
