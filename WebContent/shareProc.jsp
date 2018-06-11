<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	<jsp:include page="/WEB-INF/css/share.css"></jsp:include>
</style>
<center>
<button class="Btn" onclick="location.href='board.jsp'">글쓰기</button><br><br>


<hr>

<h3>게시판</h3>
<p style="font-size: small;">게시글에 들어가면 작성자를 확인할 수 있습니다.</p><br>

<ul class="board">
<%!
 int cnt=0;
%>

<%
	request.setCharacterEncoding("UTF-8");
	try{
		String filePath = application.getRealPath("/WEB-INF/title.txt");
		BufferedReader br = new BufferedReader(new FileReader(filePath));
		String str;
		String sen[];
		while(true){
			str = br.readLine(); 
			if(str==null) break;
			str = str.replace(".txt", "");
			sen=str.split("-");
			%>
			<li><a href="showBoard.jsp?name=<%=str%>"><%=sen[1]%></a></li>
			<% 
			cnt++;
		}
	}catch(Exception e){
		out.print("오류");
	}
	
	
	

%>

	
</ul>


</center>