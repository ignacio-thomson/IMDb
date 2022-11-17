<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navmenu"
					style="color: #fff">
					<span class="navbar-toggler-icon icon-bar"></span>
				</button>

				<div class="collapse navbar-collapse" id="navmenu">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a href="registro"
							class="nav-link text-light" id="navbar_link">Registrarse</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>
	<!-- Fin Header -->

	<div class="container pt-3">
		<div class="row align-items-center p-3">
			<div class="col-md-6 container py-1">
				<div class="d-flex justify-content-center my-5">
					<img src="/img/undraw_secure_login_pdn4.svg" class="img-fluid"
						alt="" width="70%">
				</div>
			</div>
			<div class="col-md-6">
				<div class="pb-3">
					<div class="d-flex justify-content-center">
						<h2>Credenciales</h2>
					</div>
				</div>
				<form action="login" method="post">
					<div class="row g-2">
						<div class="">
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid"
									placeholder="name@example.com" name="user" id="user" required>
								<label for="floatingInputGrid">Usuario</label>
							</div>
						</div>
						<div class="">
							<div class="form-floating">
								<input type="password" class="form-control"
									id="floatingInputGrid" placeholder="name@example.com"
									name="password" id="password" required> <label
									for="floatingInputGrid">Contraseña</label>
							</div>
						</div>
					</div>
					<!-- Botón agregar producto -->
					<div class="d-flex justify-content-center mt-4">
						<input type="submit" class="btn m-2 btn-danger" value="Iniciar sesion" />
					</div>
				</form>
			</div>
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