<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cookieget.jsp</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); 
	
		//out.println("쿠키name : " + cookies[0].getName() + "<br/>"); //쿠키 name 불려오기
		//out.println("쿠키value : " + cookies[0].getValue() + "<br/>"); //쿠키 value 불러오기
		//out.println("쿠키maxage : " + cookies[0].getMaxAge() + "<br/>"); // 쿠키 maxage 불러오기
		
		for(int i=0; i<cookies.length ;i++){   // cookie객체 수 만큼 반복문 선언
			String name = cookies[i].getName(); // cookies이름 객체를 불러옴
			String value = cookies[i].getValue(); // cookies values객체들을 불러옴
			if(name.equals("naver")){
				out.println("cookies["+i+"] name : " + name + "<br/>");
				out.println("cookies["+i+"] value : " + value + "<br/>");
				out.println("----------------------------------------<br/>");
				}
		}
	%>
	
	<a href="cookiedel.jsp">cookie 삭제 확인 페이지로 이동</a>
	
</body>
</html>