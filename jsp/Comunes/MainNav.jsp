<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

			<div class="main_nav_container">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-right">
							<div class="logo_container">
								<a href="index.jsp">Mezcales <span>La Parroquia</span></a>
							</div>
							<nav class="navbar">
								<ul class="navbar_menu">
									<li><a href="index.jsp">Inicio</a></li>
									<li><a href="Controlador?accion=tienda">Tienda</a></li>
									<li><a href="#">blog</a></li>
									<li><a href="contact.jsp">contacto</a></li>
								</ul>
								<ul class="navbar_user">
									<li><a href="ServletUsuario?accion=acceso"><i class="fa fa-user"
											aria-hidden="true"></i></a></li>
									<li class="checkout"><a href="Controlador?accion=Carrito">
											<i class="fa fa-shopping-cart" aria-hidden="true"></i> <span
											id="checkout_items" class="checkout_items">${contador}</span>
									</a></li>
								</ul>
								<div class="hamburger_container">
									<i class="fa fa-bars" aria-hidden="true"></i>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>


</body>
</html>