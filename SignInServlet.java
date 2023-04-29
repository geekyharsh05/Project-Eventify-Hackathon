package com.hackathon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignInServlet extends HttpServlet {

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
		out.println(email);

		try {
			Thread.sleep(3000);

			Class.forName("com.mysql.cj.jdbc.Driver");

			String dburl = "jdbc:mysql://localhost:3306/firstdb";
			String username = "root";
			String pass = "Mume@143";

			Connection conn = DriverManager.getConnection(dburl, username, pass);

			// queries..
			String query = "insert into EventHack(user_email,password) values(?,?)";

			PreparedStatement pstm = conn.prepareStatement(query);

			pstm.setString(1, email);
			pstm.setString(2, password);

			pstm.executeUpdate();

			out.println("Success");

			conn.close();

		}

		catch (Exception e) {
			e.printStackTrace();
			out.println("Unsuccessful");
		}
	}
}
