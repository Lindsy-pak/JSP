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
<title>detail</title>
</head>
<body>
	<h1>Detail</h1>
	<div>detail <%=request.getParameter("no")%></div>
	<div>
		<form action="/del" method="post">
			<input type="hidden" name="no" value=<%=no%>>
			<input type="submit" value="삭제">
		</form>
		<%-- <a href="/del?no=<%=no %>"><button>삭제</button></a> --%> <!-- get방식으로 삭제하는 방법 -->
	</div>
	<div>제목 : <%=vo.getTitle() %></div>
	<div> <%=vo.getCtnt() %></div>
</body>
</html>