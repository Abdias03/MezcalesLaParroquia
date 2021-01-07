
$(document).ready(function() {
	console.log("listo");
	$("tr #btnDelete").click(function() {
		var idp = $(this).parent().find("#idp").val();

		swal({
			title: "Esta seguro de eliminar?",
			text: "Once deleted, Ud puede agregar de Nuevo!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
			.then((willDelete) => {
				if (willDelete) {

					eliminar(idp);

					swal("Bien! el registro se a eliminado!", {
						icon: "success",
					}).then((willDelete) => {
						if (willDelete) {
							parent.location.href = "Controlador?accion=Carrito";
						}
					});
				} else {
					swal("Tu registro no fue eliminado!");
				}
			});

	});

	function eliminar(idp) {
		var url = "Controlador?accion=Delete";
		$.ajax({
			type: 'GET',
			url: url,
			data: "idp=" + idp,
			success: function(data, textStatus, jqXHR) {
				location.href = "Controlador?accion=Carrito";
			}
		});

	}

	$("tr #idCantidad").click(function() {

		var idprod = $(this).parent().find("#idProducto").val();
		var cant = $(this).parent().find("#idCantidad").val();
		var url = "Controlador?accion=actualizar";
		$.ajax({
			type: 'GET',
			url: url,
			data: "ipd=" + idprod + "&cantidad=" + cant,
			success: function(data, textStatus, jqXHR) {
				location.href = "Controlador?accion=Carrito";
			}

		});

	});
	// Actualizar Informacion Cliente
	$("div #actualizarDatos").click(function() {

		var correo = $(this).parent().find("#email").val();
		var Password = $(this).parent().find("#password").val();
		var url = "ServletUsuario?accion=Ingresar";
		$.ajax({
			type: 'POST',
			url: url,
			data: "correo=" + correo + "&Password=" + Password,
			success: function(data, textStatus, jqXHR) {
				location.href = "ServletUsuario?accion=Ingresar";
			}
		})
	});

});

function validarLogin(form) {
	// Validamos usuario
	var emails = form.correo;
	if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(emails.value)) {
	} else {
		alert("Ingresa un Email valido.");
		emails.focus();
		emails.select();
		return false;
	}

	var password = form.Password;

	if (password.value.length <= 3) {
		alert("Por favor ingresa correctamente el password ");
		password.focus();
		password.select();
		return false;
	}

	return true;
}

(function() {
	'use strict';
	document.addEventListener('DOMContentLoaded', function() {


		function validarFormulario(form) {
			// validamos el usuario 

			var emails = form.email;
			if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(emails.value)) {
			} else {
				alert("Ingresa un email valido.");
				emails.focus();
				emails.select();
				return false;
			}

			var password = form.Password;
			var password2 = form.pswrepeat;

			if (password.value.length > 3 && password2.value.length > 3) {
				if (password.value == password2.value) {

				} else if (password.value != password2.value) {
					alert("El password no coincide");
					password.focus();
					password.select();
					return false;
				}
			} else {
				alert("El password debe contener al menos 3 caracteres ");
				password.focus();
				password.select();
				return false;
			}

			// Formulario valido 
			alert(" valido, enviando datos...");
			return true;
		}

		// Registro
		var modal = document.getElementById('id02');
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

		// boton Cerrar session
		// cuando el usuario inicia session se activa el boton de cerrar session 
		var activa = document.getElementById('id05');
		var session = document.getElementById('session');

		if (session.value == 1) {
			activa.style.display = "block";
		} else {
			activa.style.display = "none";
		}

		// Activar Login con la respuesta del servidor web
		var activa = document.getElementById('id04');
		var login = document.getElementById('id01');
		if (activa.value == 1) {
			login.style.display = "block";
		}
		//Activar Registro con la respuesta del servidor web
		var activa = document.getElementById('id07');
		var registro = document.getElementById('id02');
		if(activa.value == 1){
			registro.style.display = "block";
		}
	
		// Cerrar Login
		var modal = document.getElementById('id01');
		var cerrar = document.getElementById('cancelar');
		var salir = document.getElementById('close');

		window.onclick = function(event) {

			if (event.target == cerrar || event.target == modal || event.target == salir) {
				modal.style.display = "none";
				window.location.href = "index.jsp"
			}
		}


		function iniciaProcesoFirmaDigital(tipoTramiteEntrada) {
			tipoTramiteFD = tipoTramiteEntrada;
			reintentosFD = 0;
			reintentosFDProceso = 3;
			reintentosID = -1;
			banderaMotivos = false;

			enviarFirmaDigital("");

		}

		function enviarFirmaDigital(datos) {

			if (tipoTramiteFD == "hoja de buro") {

				var pathy = "pageContext.request.contextPath";

				pathBuro = creaPathyHojaBuro();
				console.log(pathBuro);
				var url = 'ServletUsuario?accion=eliminar' + pathBuro;

				var data = new Object();
				data.url = url;

				var xmlRequest = new XMLHttpRequest();
				xmlRequest.onreadystatechange = ajaxCallBack(xmlRequest, callbackEnviarFirmaDigitalBuro, data);
				xmlRequest.open('POST', url, true);
				xmlRequest.send();
			}
		}


		function creaPathyHojaBuro() {

			var fullPath =
				"&name=" + document.getElementById("id").value;

			return fullPath;
		}

		function callbackEnviarFirmaDigitalBuro(respuesta) {

			var respArray = respuesta.value;

			if (respArray == "EXITO") {
				alert("Respuesta" + respArray);
			}

			alert("Sin Respuestas");
		}

		function ajaxCallBack(xmlHttpRequest, functionToValidate, data) {
			return function() {
				if (xmlHttpRequest.readyState == 4) {
					if (xmlHttpRequest.status != 200) {
						alert(xmlHttpRequest.status + ' ' + xmlHttpRequest.statusText);
					} else {
						functionToValidate(trim(xmlHttpRequest.responseText), data);
					}
				}

				document.getElementById("fname").innerHTML = xmlhttp.responseText;
			};
		}


	});

})();

		function myFunction() {
			var x = document.getElementById("password");
			if (x.type === "password") {
				x.type = "text";
				alert("se muestra el password");
			} else {
				x.type = "password";
			}
		}


/*


*/

