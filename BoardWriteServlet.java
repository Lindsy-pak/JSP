package com.koreait.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/write")
public class BoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jsp = "/WEB-INF/jsp/write.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(jsp);
		rd.forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String ctnt = request.getParameter("ctnt");
				
		BoardVO vo = new BoardVO();
		vo.setTitle(title); //vo는 내가 값을 추가할 때마다 늘어난다.
		vo.setCtnt(ctnt);
		
		Database.list.add(vo);
//		List<BoardVO> refList = Database.list;
//		refList.add(vo); // 위 문장과 같은 말 
		
		response.sendRedirect("/list"); //Get방식으로 주소이동
	}

}
