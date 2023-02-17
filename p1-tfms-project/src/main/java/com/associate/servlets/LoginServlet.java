package com.associate.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginServer")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection myCon;

	public LoginServlet() {
		super();
	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = "jdbc:mysql://localhost:3306/tfms";
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			myCon = DriverManager.getConnection(url, "root", "Aakash@123");
			System.out.println("connected");
		} catch (ClassNotFoundException | SQLException e1) {
		
			e1.printStackTrace();
			System.out.println("not found");
		}
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession(true);
		RequestDispatcher dispatcher;
		try {
			PreparedStatement PStm = myCon.prepareStatement(
					"select user_name ,user_password from associate_login where user_name=? and user_password=?");
			PStm.setString(1, username);
			PStm.setString(2, password);

			ResultSet rs = PStm.executeQuery();
			if (rs.next()) {
				dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);
				
				if (Objects.isNull(session)) {
					response.setIntHeader("Refresh", 1);
					System.out.println("this obj112");
					return;
				}
				session.setAttribute("username", rs.getString(1));
				System.out.println(session.getAttribute("username"));
			
			} else {
				System.out.println("not availble");
				
					session.setAttribute("errorMsg","Wrong UserId and Password");
					response.sendRedirect("loginaPage.jsp");

				
				
//				dispatcher = request.getRequestDispatcher("loginaPage.jsp");
				
//				dispatcher.include(request, response);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
