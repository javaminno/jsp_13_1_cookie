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
	
		for(int i=0; i<cookies.length ;i++){   // cookie��ü �� ��ŭ �ݺ��� ����
			String name = cookies[i].getName(); // cookies�̸� ��ü�� �ҷ���
			String value = cookies[i].getValue(); // cookies values��ü���� �ҷ���

			out.println("cookies["+i+"] name : " + name + "<br/>");
			out.println("cookies["+i+"] value : " + value + "<br/>");
		}
%>
</body>
</html>