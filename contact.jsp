<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contactanos</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="styles/contact_styles.css">
<link rel="stylesheet" type="text/css"
	href="styles/contact_responsive.css">
<!-- anexeo para cache -->
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<!-- fin anexo -->
</head>

<body>

	<div class="super_container">

		<!-- Header -->

		<header class="header trans_300">

			<!-- Top Navigation -->

			<!-- Navegacion Superior -->

			<jsp:include page="/jsp/Comunes/NavSuperior.jsp" />

			<!-- Login -->
			<jsp:include page="/jsp/Comunes/Login.jsp" />

			<!-- Registro -->
			<jsp:include page="/jsp/Comunes/Registro.jsp" />

			<!-- Main Navigation -->
			<jsp:include page="/jsp/Comunes/MainNav.jsp" />

		</header>

		<div class="fs_menu_overlay"></div>

		<!-- Navegador Movil -->
		<jsp:include page="/jsp/Comunes/NavMovil.jsp" />

		<div class="container contact_container">
			<div class="row">
				<div class="col">

					<!-- Breadcrumbs -->

					<div class="breadcrumbs d-flex flex-row align-items-center">
						<ul>
							<li><a href="index.jsp">Inicio</a></li>
							<li class="active"><a href="contact.jsp"><i
									class="fa fa-angle-right" aria-hidden="true"></i>Contacto</a></li>
						</ul>
					</div>

				</div>
			</div>

			<!-- Map Container -->

			<div class="row">
				<div class="col">
					<div id="google_map">
						<div class="map_container">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3765.640285947875!2d-99.14327468561996!3d19.298003049972646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85ce01ac0c287097%3A0x7988d785ae4ecefb!2sClub%20Deportivo%20Atlas%2046%2C%20Coapa%2C%20Villa%20L%C3%A1zaro%20C%C3%A1rdenas%2C%20Tlalpan%2C%2014370%20Ciudad%20de%20M%C3%A9xico%2C%20CDMX!5e0!3m2!1ses-419!2smx!4v1599416189991!5m2!1ses-419!2smx"
								width="1200" height="510" frameborder="0" style="border: 0;"
								allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
							<!--<div id="map"></div>-->
						</div>
					</div>
				</div>
			</div>

			<!-- Contact Us -->

			<div class="row">

				<div class="col-lg-6 contact_col">
					<div class="contact_contents">
						<h1>Contactanos</h1>
						<p>Escribe tus sugerencia y te contactaremos enseguida</p>
						<div>
							<p>(741) 116-7608</p>
							<p>abdias.morales03@gmail.com</p>
						</div>
						<div>
							<p>mm</p>
						</div>
						<div>
							<p>Abierto horario: 8.00-18.00 Lunes-Viernes</p>
							<p>Domingo: Cerrado</p>
						</div>
					</div>

					<!-- Follow Us -->

					<div class="follow_us_contents">
						<h1>Siguenos</h1>
						<ul class="social d-flex flex-row">
							<li><a href="https://www.facebook.com/MezcalesLaParroquia"
								style="background-color: #3a61c9"><i class="fa fa-facebook"
									aria-hidden="true"></i></a></li>
							<!--	<li><a href="#" style="background-color: #41a1f6"><i class="fa fa-twitter" aria-hidden="true"></i></a></li> -->
							<!--	<li><a href="#" style="background-color: #fb4343"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li> -->
							<li><a href="https://www.instagram.com/mezcales.laparroquia"
								style="background-color: #8f6247"><i class="fa fa-instagram"
									aria-hidden="true"></i></a></li>
						</ul>
					</div>

				</div>

				<div class="col-lg-6 get_in_touch_col">
					<div class="get_in_touch_contents">
						<h1>Póngase en Contacto con Nosotros!</h1>
						<p>Completa el Formulario a continuación.</p>
						<form action="post">
							<div>
								<input id="input_name" class="form_input input_name input_ph"
									type="text" name="name" placeholder="Nombre"
									required="required" data-error="Name is required."> <input
									id="input_email" class="form_input input_email input_ph"
									type="email" name="email" placeholder="Email"
									required="required" data-error="Valid email is required.">
								<!--<input id="input_website" class="form_input input_website input_ph" type="url" name="name" placeholder="Website" required="required" data-error="Name is required."> -->
								<textarea id="input_message" class="input_ph input_message"
									name="message" placeholder="Mensaje" rows="3" required
									data-error="Please, write us a message."></textarea>
							</div>
							<div>
								<button id="review_submit" type="submit"
									class="red_button message_submit_btn trans_300" value="Submit">Enviar
									Mensaje</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>

		<!-- Newsletter -->

		<div class="newsletter">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div
							class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
							<h4>Infografia</h4>
							<p>Subscribete a Nuestra Infografia</p>
						</div>
					</div>
					<div class="col-lg-6">
						<form action="post">
							<div
								class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
								<input id="newsletter_email" type="email" placeholder="Tu email"
									required="required" data-error="Valid email is required.">
								<button id="newsletter_submit" type="submit"
									class="newsletter_submit_btn trans_300" value="Submit">subscribir</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->

		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div
							class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
							<ul class="footer_nav">
								<li><a href="#">Blog</a></li>
								<li><a href="#">FAQs</a></li>
								<li><a href="contact.jsp">Contactanos</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div
							class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
							<ul>
								<li><a href="https://www.facebook.com/MezcalesLaParroquia"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<!--<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li> -->
								<li><a
									href="https://www.instagram.com/mezcales.laparroquia"><i
										class="fa fa-instagram" aria-hidden="true"></i></a></li>
								<!--<li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li> -->
								<!--<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li> -->
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="footer_nav_container">
							<div class="cr">
								©2020 todos los derechos by: <a href="#">Asimov320</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>

	</div>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
	<script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script src="js/contact_custom.js"></script>
	</script>
	<script src="https://www.google-analytics.com/analytics.js" async></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="js/funciones.js" type="text/javascript"></script>
</body>

</html>
