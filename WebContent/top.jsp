<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
<jsp:include page="/WEB-INF/css/top.css"></jsp:include>
</style>
 <%
	String id = "";
 	id = (String)session.getAttribute("id"); 
		if(!(id==null||id.equals(""))){                          
			%>
			<b><%=id %></b>님의
			<% 
		}

%>
글을 읽다<br><br>
<br>
<center>
	<a href="index.jsp">처음</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="WhoamI.jsp">우리는</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="Show.jsp">시를 읽고</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="share.jsp">공유합니다</a>
</center>
<br>
