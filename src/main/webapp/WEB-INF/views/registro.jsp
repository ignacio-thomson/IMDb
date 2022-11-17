<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="cl.desafiolatam.imdb.modelo.UsuarioImdb"%>
<%@page import="cl.desafiolatam.imdb.vo.UsuarioImdbVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" type="image/png"
	href="img/android-chrome-192x192.png">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Fredoka:wght@300&display=swap"
	rel="stylesheet">
<link rel="shortcut icon" type="image/png"
	href="img/android-chrome-192x192.png">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css"
	rel="stylesheet" />
<!-- MDB -->
<link rel="shortcut icon" type="image/png"
	href="img/android-chrome-192x192.png">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.js"></script>
<style>
* {
	font-family: 'Fredoka', sans-serif;
}
</style>
<title>SHOWFLIX&trade;</title>
</head>
<body>

	<!-- Inicio Header -->
	<section>
		<nav class="bg-dark navbar navbar-expand-lg navbar-dark py-3 mb-5">
			<div class="container">
				<a href="admin" class="navbar-brand text-Light"><img src="img/SHOWFLIX.svg" alt="..." width="50%"></a>
			</div>
		</nav>
	</section>
	<!-- Fin Header -->
	
	<div class="container pt-1">
		<div class="d-flex justify-content-center my-4">
			<h1 style="font-size: 70px; text-align: center;">Registro</h1>
		</div>
	</div>
	
	<div class="container py-1">
		<div class="d-flex justify-content-center my-5">
			<img src="/img/undraw_add_user_re_5oib.svg" class="img-fluid"
				alt="" width="40%">
		</div>
	</div>

	<div class="container pt-3">
		<div class="p-3">
			<form action="agregarRegistro" method="post">
				<div class="row g-2">
					<div class="col-md">
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInputGrid"
								placeholder="name@example.com" name="usuario" required>
							<label for="floatingInputGrid">Usuario</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInputGrid"
								placeholder="name@example.com" name="email" required> <label
								for="floatingInputGrid">Email</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating">
							<input type="password" class="form-control" id="floatingInputGrid"
								placeholder="name@example.com" name="pass" required> <label
								for="floatingInputGrid">Contraseña</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating">
							<input type="password" class="form-control" id="floatingInputGrid"
								placeholder="name@example.com" name="passverificacion" required>
							<label for="floatingInputGrid">Verificar contraseña</label>
						</div>
					</div>
				</div>
				<!-- Botón agregar producto -->
				<div class="d-flex justify-content-end mt-4">
					<input type="submit" class="btn m-2 btn-danger" value="Añadir" />
				</div>
			</form>
		</div>
	</div>

	<footer class="text-center text-white bg-light mt-5">
		<!-- Grid container -->
		<div class="container pt-4">
			<!-- Section: Social media -->
			<section class="mb-4">
				<!-- Facebook -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1" href="#!"
					role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-facebook-f"></i></a>

				<!-- Twitter -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1" href="#!"
					role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-twitter"></i></a>

				<!-- Google -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1" href="#!"
					role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-google"></i></a>

				<!-- Linkedin -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1" href="#!"
					role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-linkedin"></i></a>
				<!-- Github -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1" href="#!"
					role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-github"></i></a>
			</section>
			<!-- Section: Social media -->
		</div>
		<!-- Grid container -->

		<!-- Copyright -->
		<div class="text-center text-light p-3 bg-dark">
			© 2022 Copyright: <a class="text-light" href="#">Showflix</a>
		</div>
		<!-- Copyright -->
	</footer>

</body>
</html>