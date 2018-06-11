<%@page import="java.util.Random"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page import="java.lang.String"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	<jsp:include page="/WEB-INF/css/showCss.css"></jsp:include>
</style>
<center>
   <ul class="poem"> 
<%
	//Document doc = Jsoup.connect("https://twitter.com/novel_poem").get();
	Document doc = Jsoup.connect("https://twitter.com/Z1G4R2TT3").get();

	String title = doc.title();
	
	Elements elements = doc.select("#stream-items-id");
	//out.println(elements.get(0));
	Element element = elements.get(0);
	Elements lis = element.select(".js-tweet-text-container");
	//out.println(lis.get(1));
	
	Random rand = new Random();
	int[] num = new int[5];
	for(int i=0; i<3; i++){
		num[i] = rand.nextInt(20);
		for(int j=0; j<i; j++){
			if(num[i]==num[j]){
				num[i]=rand.nextInt(20);
				j=0;
			}
		}
	}
	
	
	for(int i=0; i<3; i++){%>
		
		<%
			String[] sen = lis.get(num[i]).toString().split("/");%>
			<li onclick="alert('<%=sen[1]%>');"><%=sen[0] %>
			<% 
			//out.println(sen[0]);
		} 
		%>
		</li>
	</ul>
</center>	