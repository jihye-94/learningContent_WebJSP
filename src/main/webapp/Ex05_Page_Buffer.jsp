<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page buffer="8kb" autoFlush="true"%>
<%
/*
javapage 기본 버퍼 사용 
@page buffer="8kb" autoFlush="true"

fulsh는 8kb채워진 경우 비움(비움=클라이언트 브라우저에 날리는고 )
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//WAS 내장 객체: out 객체> java > syso.println() 동일 
		for(int i = 0; i<= 10; i++) {
			out.print("<b>" + i + "</b><br>"); //survlet에서 출력객체 
		}
	
	%>
	<hr>
	
	<%
		//<%= 사용한 하기 코드 
		for(int i = 0; i<= 10; i++) {
	%>	
		<b><%=i %></b><br>	
	<%
		}	
	%>
	
	<h2>스파케티 코드(UI작업:자동완성)</h2>
	<%
		boolean b = true;
		if(10 > 5){
	%>
			IF(true)<font color="red"><%=b %></font>
	<%		
		}else{  
			b = false;
	%>		
			IF(false)<font color="blue"><%=b %></font>
	<%
		}
	%>
	
	<h3>out객체 (서버 코드 작업) : UI작업(문자열)  : servlet 에서 UI</h3>
	<%
		boolean b2 = true;
		if(10 > 5){
			out.print("IF(true)<font color='red'>" + b2 + "</font>");
		}else{
			b = false;
			out.print("IF(false)<font color='blue'>" + b2 + "</font>");
		}
	%>
	
	
</body>
</html>