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
				cookies[i].setMaxAge(0); //��Ű����
				response.addCookie(cookies[i]); //response ��ü�� ��ȿ�Ⱓ 0���� ���õ� cookoe ž��
				out.println(id + "�� �α׾ƿ� �ϼ̽��ϴ�.");
			}
		}
	%>
	
	<a href="cookiestest.jsp">�α׾ƿ� Ȯ��</a>
	
</body>
</html>