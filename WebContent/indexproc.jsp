<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/js/mainJS.jsp"></jsp:include>
<style>
<jsp:include page="/WEB-INF/css/indexcss.css"></jsp:include>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body style="e: 100%; height: 100%">
<div class="parallax_bax">
	<img src="image/main.jpg" class="parallax pa01">
	<div class="mainText">
		<center>
			<h1>시 를&nbsp;&nbsp;읽 고,<br>책 을 &nbsp;&nbsp;고 르 다.<br><br>
			<span>글을 읽다</span><br><br>
			<%
			String id = "";
			id = (String)session.getAttribute("id"); 
			if(!(id==null||id.equals(""))){   %>
			 <button class="LoginBtn" onclick="location.href='Logout.jsp'">로그아웃</button>
					<% } else { %>
			<button class="LoginBtn" onclick="location.href='Login.jsp'">로그인</button>
			<% } %>
			</h1>
		</center>
	</div>
</div>
<br>
<br>
</body>
</html>