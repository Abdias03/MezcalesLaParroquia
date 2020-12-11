<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="js/funciones.js"></script> -->
</head>

<body>

<div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form  action="${pageContext.request.contextPath}/ServletRegistroUsuario?accion=Registro"
				method="POST" class="modal-content" onsubmit="return validarFormulario(this);">
    <div class="container">
      <h1>Registro</h1>
      <p>Por Favor llena la Información Correspondiente</p>
      <hr>
      
      <label for="name"><b>Nombre</b></label>
      <input type="text" placeholder="Nombre" name="nombre" required>
      
<!--       <label for="address"><b>Direccion</b></label> -->
<!--       <input type="text" placeholder="Direccion" name="Direccion" required> -->
      
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Email" name="email" onfocus="this.select();">
      
<!--       <label for="phone"><b>Telefono</b></label> -->
<!--       <input type="text" placeholder="Phone" name="phone" required> -->

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Password" name="Password" onfocus="this.select();" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Password" name="pswrepeat" onfocus="this.select();" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Autoguardado
      </label>

      <p>Acuerdo de Privacidad <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="submit" class="signupbtn">Registro</button>
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancelar</button>
      </div>
    </div>
  </form>
</div>


</body>
</html>