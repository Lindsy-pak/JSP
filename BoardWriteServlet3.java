package com.koreait.board3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/write")
public class BoardWriteServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jsp = "/WEB-INF/view/write.jsp";
		request.getRequestDispatcher(jsp).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String ctnt = request.getParameter("ctnt");
		
		BoardVO3 vo = new BoardVO3();
		vo.setTitle(title);
		vo.setCtnt(ctnt);
		
		System.out.println(title + ctnt);
		//콘솔에 연결되었는지 확인하는방법
		
		BoardDAO.insertBoard(vo);
		response.sendRedirect("/list");
		
		//insertBoard 호출 1.먼저 static인지 아닌지 확인 static이면 객체화 할 필요없음
		//이미 메모리에 올라갔기 때문
		// "/list"로 get방식으로 주소 이동
		
	}

}
