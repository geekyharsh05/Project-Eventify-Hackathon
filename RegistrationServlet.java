package com.hackathon;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@SuppressWarnings("serial")
public class RegistrationServlet extends HttpServlet {
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
		out.println(fname);
		out.println(lname);
		out.println(email);
		out.println(password);
		out.println(password2);

			try {
				Thread.sleep(3000);

				Class.forName("com.mysql.cj.jdbc.Driver");

				String dburl = "jdbc:mysql://localhost:3306/firstdb";
				String username = "root";
				String pass = "Mume@143";

				Connection conn = DriverManager.getConnection(dburl, username, pass);

				String query = "insert into Eventack(first_name,last_name,user_email,password) values(?,?,?,?)";

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
}
