package com.koreait.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/del")
public class BoardDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String no = request.getParameter("no");
		System.out.println("no : " + no);
		int intNo = Integer.parseInt(no);
		Database.list.remove(intNo);
		
		response.sendRedirect("/list");

		/*
		 * String jsp = "/WEB-INF/jsp/del.jsp";
		 * request.getRequestDispatcher(jsp).forward(request, response);
		 */
	}

}
