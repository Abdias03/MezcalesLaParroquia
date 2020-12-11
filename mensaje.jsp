<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	<img src="images/." width="100%"> -->
	<h1 id="menh1" align="center">
		<%
			if (request.getParameter("men") != null) {
			out.println(request.getParameter("men"));
		}
		%>
	</h1>
	<br>
	<h2 align="center">
		<a id="menh1" href="inicio.jsp">Volver a principal</a>
	</h2>
</body>

</body>
</html>