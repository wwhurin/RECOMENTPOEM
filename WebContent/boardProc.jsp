<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	<jsp:include page="/WEB-INF/css/share.css"></jsp:include>
</style>

<center>
<hr>
	<h1>글쓰기</h1>
	<p style="font-size: small;">작성하신 글은 게시글에 올라갑니다. <br>목록에서는 닉네임이 공개되지 않습니다.</p>
	<br>
	
	<form action="boardInput.jsp" method="post">
		<input type="text" name="title" placeholder="제목을 입력해주세요"><br><br>
		<textarea rows="10" cols="70" name="mainT"></textarea><br><br>
		<input type="submit" class="Btn">
		<button class="Btn" onclick="location.href='boardInput.jsp'">취소</button>
	</form>
	<hr>
	<br>
</center>