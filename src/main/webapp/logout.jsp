<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length;i++){
			String id = cookies[i].getValue();
			if(id.equals("abcde")){
				cookies[i].setMaxAge(0); //쿠키삭제
				response.addCookie(cookies[i]); //response 객체에 유효기간 0으로 셋팅된 cookoe 탑제
				out.println(id + "님 로그아웃 하셨습니다.");
			}
		}
	%>
	
	<a href="cookiestest.jsp">로그아웃 확인</a>
	
</body>
</html>