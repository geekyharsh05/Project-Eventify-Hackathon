package com.eventManager;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SignUp extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		process(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		process(req, res);
	}

	public void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

		// getting all the incoming details from the request
		String fname = req.getParameter("firstname");
		String lname = req.getParameter("lastname");
		String email = req.getParameter("user_email");
		String password = req.getParameter("password");
		String password2 = req.getParameter("password2");

		if(password.equals(password2)) {
			try {
				Thread.sleep(3000);

				Class.forName("com.mysql.cj.jdbc.Driver");

				String dburl = "jdbc:mysql://localhost:3306/firstdb";
				String username = "root";
				String pass = "Mume@143";

				Connection conn = DriverManager.getConnection(dburl, username, pass);

				String query = "insert into Eventhack(first_name,last_name,user_email,password) values(?,?,?,?)";

				PreparedStatement pstm = conn.prepareStatement(query);

				pstm.setString(1, fname);
				pstm.setString(2, lname);
				pstm.setString(3, email);
				pstm.setString(4, password);

				pstm.executeUpdate();

				out.println("Success");

				conn.close();

			}

			catch (Exception e) {
				e.printStackTrace();
				out.println("Unsuccessful");
			}
		}
		else {
			out.println("Wrongpw");
		}
		
	}
}
