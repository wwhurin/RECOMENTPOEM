<%
	String pagename = request.getParameter("CONTENT");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
<jsp:include page="/WEB-INF/css/font.css"></jsp:include>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body>

<table border=0 width=100% cellpadding=2 cellspacing=0>
<tr>
	<td class="MenuFix" valign="top">
		<center><img id="logo" src="image/logo.png"></center>
	</td>
</tr>
<tr>
	<td class="MenuFix">
		<center><jsp:include page="top.jsp"/></center>
	</td>
</tr>
<tr>
	<td>
		<jsp:include page="<%=pagename%>" flush="false"/>
	</td>
</tr>
<tr>
	<td>
		<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>

</table>


</body>
</html>