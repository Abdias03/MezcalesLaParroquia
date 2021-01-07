<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<!-- Login -->
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

			<div id="id01" class="modal">

				<form class="modal-content animate" action="ServletUsuario"
					method="post" onsubmit="return validarLogin(this);">
					<div class="imgcontainer">
						<span id="close"
							class="close" title="Close Modal">&times;</span> <img
							src="images/login_avatar.png" alt="Avatar" class="avatar">
					</div>

					<div class="container">
						<label for="uname"><b>Email</b></label> 
						<input type="text" placeholder="Enter Username" name="correo" onfocus="this.select();" id="email" required> 
						<label for="psw"><b>Password</b></label>
						<input type="password" placeholder="Enter Password" name="Password" onfocus="this.select();" id="password" required>
						<input type="checkbox" onclick="saludo()">Show Password

						<button type="submit" name="accion" value="Ingresar">Login</button>
						<button type="button"
						onclick="document.getElementById('id02').style.display='block'" style="background:blue">Registro</button>
					</div>

					<div class="container" style="background-color: #f1f1f1">
						<button type="button"
							class="cancelbtn" id="cancelar">Cancel</button>
						<span class="psw">Forgot <a href="#">password?</a></span>
					</div>
				</form> 
			</div>
			
			<!-- 							onclick="document.getElementById('id01').style.display='none'" -->

			<!-- End Login -->
<script src="js/prueba.js" type="text/javascript"></script>
</body>
</html>