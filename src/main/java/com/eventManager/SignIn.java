package com.eventManager;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SignIn extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		process(req, res);
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		process(req, res);
	}

	public void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

		// getting all the incoming details from the request
		String email = req.getParameter("user_email");
		String password = req.getParameter("password");

		try {
			Thread.sleep(3000);

			Class.forName("com.mysql.cj.jdbc.Driver");

			String dburl = "jdbc:mysql://localhost:3306/firstdb";
			String username = "root";
			String pass = "Mume@143";

			Connection conn = DriverManager.getConnection(dburl, username, pass);

			String query = "select id from Eventhack where user_email = ? AND password = ?";

			PreparedStatement pstm = conn.prepareStatement(query);

			pstm.setString(1, email);
			pstm.setString(2, password);

			ResultSet rs = pstm.executeQuery();

			boolean f = false;

			if (rs.next()) {
				out.println("Success");
			}
			conn.close();

		}

		catch (Exception e) {
			e.printStackTrace();
			out.println("Unsuccessful");
		}
	}
}