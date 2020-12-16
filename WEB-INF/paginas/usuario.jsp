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
            <input type="text" id="id" name="idCliente" value="${cliente.idCliente}"placeholder="10001">
              </div>
			</div>
           <label>
           Actualiazar Datos
        </label>
        <input type="submit" value="Actualizar" class="btnu">
        <button type="button" onclick="iniciaProcesoFirmaDigital('hoja de buro');" class="cancelbtn">Eliminar</button>
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
						<label>subtotal:</label> <input type="text"
							value="$ ${totalPagar}0" class="form-control">
						<label>Descuento:</label> <input type="text"
							class="form-control"> <label>TotalPagar:</label> <input
							type="text" value="$ ${totalPagar}0"
							class="form-control">
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-info btn-block">Realizar pago</a> <a
							href="Controlador?accion=GenerarCompra"
							class="btn btn-danger btn-block">Generar Compra</a> <a
							href="index.jsp"></a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Navegador Movil -->

	<jsp:include page="/jsp/Comunes/NavMovil.jsp" />

	<!-- Pie de Pagina Usuario -->

	<jsp:include page="/jsp/Usuario/PieDePaginaUser.jsp" />

	<!-- Scrips -->
	<jsp:include page="/jsp/Comunes/Scripts.jsp" />

</body>

</html>
