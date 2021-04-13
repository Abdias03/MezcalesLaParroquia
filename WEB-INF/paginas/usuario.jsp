<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="conexion.ConexionDaoJDBC"%>
<%@ page import="com.mezcales.parroquia.modelo.Producto"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<!-- anexeo para cache -->
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<!-- fin anexo -->
<meta charset="utf-8">
<title>Mezcales La Parroquia</title>
<jsp:include page="/jsp/Comunes/Estilos.jsp" />
<link rel="stylesheet" href="css/usuarioDatos.css">

</head>


<!-- Header -->

<body>

	<header class="header trans_300">

		<jsp:include page="/jsp/Comunes/NavSuperior.jsp" />
		<!-- Main Navigation -->
		<jsp:include page="/jsp/Usuario/MainNavUser.jsp" />

	</header>
	
	<style>
		
body {
    margin-top: 180px;
}
	</style>
	

	<div class="rowUser">
  <div class="col-750">
    <div class="containerUser">
      <form action="${pageContext.request.contextPath}/ServletUsuario?accion=actualizar&idCliente=${cliente.idCliente}" method="POST">

        <div class="rowUser">
          <div class="col-505">
            <h3>Mi Informacion</h3>
            <label for="fname"><i class="fa fa-user"></i>Nombre Completo</label>
            <input type="text" id="fname" name="name" value ="${cliente.nombre}" placeholder="Andres Lopez">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" value="${cliente.email}" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i>Direccion</label>
            <input type="text" id="adr" name="address" value="${cliente.direccion}" placeholder="542 W. 15th Street">
            <label for="tel"><i class="fa fa-mobile" aria-hidden="true"></i>Telefono</label>
            <input type="text" id="cel" name="telefono" value="${cliente.telefono}" placeholder="5567404589">
            <label for="city"><i class="fa fa-institution"></i>Ciudad</label>
            <input type="text" id="city" name="city" value="${cliente.ciudad}" placeholder="CDMX">
            <label for="zip">Codigo Postal</label>
            <input type="text" id="zip" name="zip" value="${cliente.zip}"placeholder="10001">
              </div>
			</div>
           <label>
           Actualiazar Datos
        </label>
        <input type="submit" value="Actualizar" class="btnu">
      </form>
    </div>
  </div>
</div>


	<div class="container mt-4">
		<h3>Mis Productos</h3>
		<br>
		<div class="row">
			<div class="col-sm-8">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ITEM</th>
							<th>NOMBRES</th>
							<th>DESCRIPCION</th>
							<th>PRECIO</th>
							<th>CANT</th>
							<th>SUBTOTAL</th>
							<th>ACCION</th>
						</tr>
					</thead>
					<tbody>
					<!--  -->
						<c:forEach var="car" items="${Carrito}">
							<tr>
								<td>${car.getItem()}</td>
								<td>${car.getNombres()}</td>
								<td><img src="ControladorIMG?id=${car.getIdProducto()}"
									width="100" height="100"> <br>${car.getDescripcion()}
								</td>

								<td><lable>$</lable>${car.getPrecioCompra()}</td>
								<td><input type="hidden" id="idProducto"
									value="${car.getIdProducto()}"> <input type="number"
									id="idCantidad" value="${car.getCantidad()}" min="1"></td>
								<td><lable>$</lable>${car.getSubTotal()}</td>
								<td><input type="hidden" id="idp"
									value="${car.getIdProducto()}">
									<button style="background-color: Tomato;" type="button"
										href="#" id="btnDelete" value="Eliminar">Eliminar</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="card-header">
							<h3>Generar Compra</h3>
						</div>
						<div class="card-body">
						<form action="${pageContext.request.contextPath}/AuthorizePaymentServlet?accion=pagar" method="POST">
						
							<label>subtotal:</label> 
							<input type="text" name="subtotal" value="${totalPagar}" name="subtotal" readonly="" class="form-control">
							<label>Descuento:</label>
							<input type="text" readonly="" class="form-control">
							<label>TotalPagar:</label> 
							<input type="text" name="Total_pagar" value="${totalPagar}" readonly="" class="form-control">
<%-- 							<input type="hidden" id="idProducto" value="${car.getNombres()}" name="nombre"> --%>
						</div>
						<div class="card-footer">
							 <button type="submit" class="signupbtn">Comprar</button>
							 <img data-testid="header-logo" src="https://www.paypalobjects.com/checkoutweb/release/hermione/media/logo.7e5b43e3.svg" width="112" height="29" alt="PayPal">
<%-- 								<%@include file="checkout.jsp"%> --%>
<!-- 							<a href="Controlador?accion=GenerarCompra" class="btn btn-danger btn-block">Generar Compra</a> -->
						</form>
						</div>
					</div>
				</div>
		</div>
	</div>
	
	<style>

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0px;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 0px;
	margin-top: 0px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 40%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>


	<!-- Navegador Movil -->

	<jsp:include page="/jsp/Comunes/NavMovil.jsp" />

	<!-- Pie de Pagina Usuario -->

	<jsp:include page="/jsp/Usuario/PieDePaginaUser.jsp" />

	<!-- Scrips -->
	<jsp:include page="/jsp/Comunes/Scripts.jsp" />

</body>

</html>
