<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	<jsp:include page="/WEB-INF/css/share.css"></jsp:include>
</style>
    
   <%
   	response.setCharacterEncoding("UTF-8");
   	request.setCharacterEncoding("UTF-8");
   
	String name = request.getParameter("name");
	String filePath = application.getRealPath("/WEB-INF/board/"+name+".txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	br.readLine();

   %>

<center>
   <h1><%=br.readLine() %></h1><br><hr><br>
   <%br.readLine(); %>
   <p><%=br.readLine() %></p><br>
   <%br.readLine(); %>
   <p style="font-size: small;">작성자 : <%=br.readLine() %></p><br><br><br>
   <button class="Btn" onclick="location.href='share.jsp'">돌아가기</button>
</center>