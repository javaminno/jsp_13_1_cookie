<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cookietest.jsp</title>
</head>
<body>
		<%
		Cookie[] cookies = request.getCookies();
	
		for(int i=0; i<cookies.length ;i++){   // cookie객체 수 만큼 반복문 선언
			String name = cookies[i].getName(); // cookies이름 객체를 불러옴
			String value = cookies[i].getValue(); // cookies values객체들을 불러옴

			out.println("cookies["+i+"] name : " + name + "<br/>");
			out.println("cookies["+i+"] value : " + value + "<br/>");
		}
%>
</body>
</html>