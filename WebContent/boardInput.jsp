<%@page import="java.util.Date"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";
	id = (String)session.getAttribute("id"); 
	if((id==null||id.equals(""))){  
		pageContext.forward("GoBack.jsp");
	}
	
	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title");
	String mainT = request.getParameter("mainT");
	
	PrintWriter writer = null;
	Date date = new Date();
	Long time = date.getTime();
	String filename = time + "-"+title+".txt";

	
	String filePath = application.getRealPath("/WEB-INF/board/"+filename);
	out.println(filePath);
	out.println(title);
	out.println(mainT);
	
	BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true));
	PrintWriter pw = new PrintWriter(bw, true);
	
	pw.printf("title/"); pw.println(); pw.printf(title); pw.println();
	pw.printf("mainT/"); pw.println(); pw.printf(mainT); pw.println();
	pw.printf("ID/"); pw.println(); pw.printf((String)session.getAttribute("id"));
	
	pw.println();
	
	pw.flush(); 
	
	String filecheckPath = application.getRealPath("/WEB-INF/title.txt");
	BufferedWriter bwr = new BufferedWriter(new FileWriter(filecheckPath, true));
	PrintWriter pwr = new PrintWriter(bwr, true);
	pwr.printf(filename); pwr.println();
	
	response.sendRedirect("share.jsp");

%>