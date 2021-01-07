<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpServletRequest"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
	Integer activa = (Integer) request.getAttribute("activa");
	Integer activaRegistro = (Integer) request.getAttribute("activaRegistro");
	%>

	<!-- 	Usuario Activo  -->
	<input type="hidden" id="session" value ='${valor}'>
	<input type="hidden" id="id04" value="<%=activa %>">
	<input type="hidden" id="id07" value="<%=activaRegistro %>">
	<div class="top_nav">
		<div class="container">
			<div class="row">
				<div class="dropdown">
					<a id="id05" style="color: white" href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown">Cerrar
						Session</a>
					<div class="dropdown-menu text-center">
						<a><img src="images/usuario.png" height="80" width="80"></a>
						<br> <a>${cliente.nombre}</a> <a><lable>${cliente.email}</lable></a>
						<div class="dropdown-divider"></div>
						<a href="ServletUsuario?accion=salir" class="dropdown-item">Cerrar Session</a>
					</div>

					<li class="account"><a style = " color: white; font-size: 17px;" href="#"> Mi
							Cuenta <i class="fa fa-angle-down"></i>
					</a>
						<ul class="account_selection">
							<li><a href="#"
								onclick="document.getElementById('id01').style.display='block'"><i
									class="fa fa-sign-in" aria-hidden="true"> </i>Inicio</a></li>

							<li><a href="#"
								onclick="document.getElementById('id02').style.display='block'"><i
									class="fa fa-user-plus" aria-hidden="true"></i>Registro</a></li>
						</ul></li>
				</div>
			</div>
		</div>
	</div>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>