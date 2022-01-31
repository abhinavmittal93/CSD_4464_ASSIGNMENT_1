package com.am.aa.ss.nk.sa.week3.assignment1;

/***
 * 
 * @author Abhinav
 * @Date 27-01-2022
 * 
 * @Description This will display the Student Details Form to the user if the user is logged in,
 * otherwise it will redirect the user to Login Page.
 * 
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentDetails
 */
@WebServlet("/StudentDetails")
public class StudentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		boolean isLoggedIn = session.getAttribute("isLoggedIn") != null ? (boolean) session.getAttribute("isLoggedIn")
				: false;
		if (isLoggedIn) {
			response.sendRedirect("StudentDetails.jsp");
		} else {
			session.setAttribute("message", "<p style=\"color:red;\">Please login to continue!!!</p>");
			response.sendRedirect("Login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		boolean isLoggedIn = session.getAttribute("isLoggedIn") != null ? (boolean) session.getAttribute("isLoggedIn")
				: false;
		if (isLoggedIn) {
			doGet(request, response);
		} else {
			session.setAttribute("message", "<p style=\"color:red;\">Please login to continue!!!</p>");
			response.sendRedirect("Login.jsp");
		}
	}

}
