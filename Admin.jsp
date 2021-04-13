<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin | Log in </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <link rel="stylesheet" href="document/css/all.min.css">
  <link rel="stylesheet" href="document/css/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="document/css/adminlte.min.css">
  <link rel="stylesheet" href="document/css/fontawesome.min.css" type="text/css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="index.jsp" class="h1"><b>Admin</b> MLP</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Iniciar Sesion</p>

      <form action="Administrador" method="post">
        <div class="input-group mb-3">
          <input type="email" name="email" class="form-control" placeholder="Email" required>
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password" class="form-control" placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
            </div>
          </div>
        </div>
          <br></br>
        <div  class="card-header text-center">
          <div class="social-auth-links text-center mt-2 mb-3">
            <button type="submit" name="accion" value="inicio" class="btn btn-block btn-primary"> Sign In</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="document/js/jquery.min.js"></script>
<script src="document/js/bootstrap.bundle.min.js"></script>
<script src="document/js/adminlte.min.js"></script>
</body>
</html>