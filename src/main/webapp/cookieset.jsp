<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cookieset.jsp</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("abc","1234"); //쿠키 객체 생성
		cookie.setMaxAge(60*60*24);  // 쿠키의 유효시간 생성 (60(초)*60(분)*24(시간)=24시간)
		response.addCookie(cookie); //  response 쿠키 탑재 
	%>
	
	<h1>cookie의 name, value, Max_Age를 설정하였습니다.</h1>
	
	<a href="cookieget.jsp">cookie의 설정값을 확인하는 페이지로 이동</a> <%-- 설정한 페이지로 이동 --%>
</body>
</html>