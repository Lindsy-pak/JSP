<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.koreait.board.BoardVO" %>
<%
	String no = request.getParameter("no"); /* 브라우저에서 오는 메서드  */
	BoardVO vo = (BoardVO) request.getAttribute("data");/* 형변환을 하는 이유 :object에서 오는 메서드 getArribute  */
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<form action="/mod" method="post">
		<input type="hidden" name="no" value="<%=no %>">
		<div>
			제목 : <input type="text" name="title" value="<%=vo.getTitle() %>">
		</div>
		<div>
			내용 : <textarea name="ctnt" rows="10" cols="10" ><%=vo.getCtnt() %></textarea>
		</div>
		<div>
			<input type="submit" value="수정"> <!-- 트리거: 방아쇠  -->
			<input type="reset" value="초기화">
		</div>
	</form>
</body>
</html>