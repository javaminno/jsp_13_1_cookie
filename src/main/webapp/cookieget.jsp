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
	
		//out.println("��Űname : " + cookies[0].getName() + "<br/>"); //��Ű name �ҷ�����
		//out.println("��Űvalue : " + cookies[0].getValue() + "<br/>"); //��Ű value �ҷ�����
		//out.println("��Űmaxage : " + cookies[0].getMaxAge() + "<br/>"); // ��Ű maxage �ҷ�����
		
		for(int i=0; i<cookies.length ;i++){   // cookie��ü �� ��ŭ �ݺ��� ����
			String name = cookies[i].getName(); // cookies�̸� ��ü�� �ҷ���
			String value = cookies[i].getValue(); // cookies values��ü���� �ҷ���
			if(name.equals("naver")){
				out.println("cookies["+i+"] name : " + name + "<br/>");
				out.println("cookies["+i+"] value : " + value + "<br/>");
				out.println("----------------------------------------<br/>");
				}
		}
	%>
	
	<a href="cookiedel.jsp">cookie ���� Ȯ�� �������� �̵�</a>
	
</body>
</html>