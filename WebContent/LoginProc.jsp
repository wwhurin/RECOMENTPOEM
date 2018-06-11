<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	String filePath = application.getRealPath("/WEB-INF/user.txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	out.println(filePath);
	/* String str = br.readLine();
	out.println(str);
	str = br.readLine();
	out.println(str);
	str = br.readLine();
	out.println(str);
	str = br.readLine();
	out.println(str);
	str = br.readLine();
	out.println(str);
	str = br.readLine();
	out.println(str); */
	String str = br.readLine();
	
	while(true){
		str = br.readLine();
		if(str==null){
			break;
		}else if(str.equals("id/")){ out.println(str);
			str=br.readLine();
			if(str.equals(id)){out.println(str);
				str=br.readLine();
				if(str.equals("pwd/")){
					str=br.readLine();
					if(str.equals(pwd)){
						session.setAttribute("id", id); 
						session.setAttribute("pwd", pwd);  
						pageContext.forward("index.jsp");
					}
				}
			}
		}
	}
	
	
	pageContext.forward("NoLogin.jsp");
%>


</body>
</html>