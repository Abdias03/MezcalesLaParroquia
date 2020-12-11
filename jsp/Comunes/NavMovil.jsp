<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="hamburger_menu">
			<div class="hamburger_close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</div>
			<div class="hamburger_menu_content text-right">
				<ul class="menu_top_nav">
					<li class="menu_item has-children">
					<li class="menu_item has-children"><a href="#"> Mi Cuenta
							<i class="fa fa-angle-down"></i>
					</a>
						<ul class="menu_selection">
							<li><a href="#" onclick="document.getElementById('id01').style.display='block'"><i class="fa fa-sign-in"
													aria-hidden="true">	
												</i>Inicio</a></li>
							<li><a href="#" onclick="document.getElementById('id02').style.display='block'"><i class="fa fa-user-plus"
									aria-hidden="true"></i>Registro</a></li>
						</ul></li>
					<li class="menu_item"><a href="index.jsp">Inicio</a></li>
					<li class="menu_item"><a href="Controlador?accion=tienda">Tienda</a></li>
					<li class="menu_item"><a href="#">blog</a></li>
					<li class="menu_item"><a href="contact.jsp">contacto</a></li>
				</ul>
			</div>
		</div>
</body>
</html>