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

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navmenu"
					style="color: #fff">
					<span class="navbar-toggler-icon icon-bar"></span>
				</button>

				<div class="collapse navbar-collapse" id="navmenu">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a href="logout" class="nav-link text-light"
							id="navbar_link">Cerrar sesion</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>
	<!-- Fin Header -->
	
	<div class="container pt-1">
		<div class="d-flex justify-content-center my-4">
			<h1 style="font-size: 70px; text-align: center;">Bienvenido Administrador</h1>
		</div>
	</div>
	
	<div class="container py-1">
		<div class="d-flex justify-content-center my-5">
			<img src="/img/undraw_add_user_re_5oib.svg" class="img-fluid"
				alt="" width="40%">
		</div>
	</div>
	
	<div class="d-flex justify-content-center pb-2">
		<div class="container row">
			<div class="col-md-4">
				<div class="d-flex justify-content-center">
					<h2>Buscar usuario</h2>
				</div>
			</div>
			<div class="col-md-8">
				<form action="buscar" method="get">
					<div class="row g-2">
						<div class="col-md">
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid"
									value="" name="nombreUsuario" required> <label
									for="floatingInputGrid">Usuario</label>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-center pt-4">
						<input type="submit" class="btn m-2 btn-danger" value="Buscar" />
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="pt-5 table-responsive">
			<!-- Inicio Tabla -->
			<table border="1" class="table table-bordered table-hover">
				<thead class="table-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Usuario</th>
						<th scope="col">Email</th>
						<th scope="col">Contraseña</th>
						<th scope="col">Contraseña verificada</th>
						<th scope="col">Editar productos</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listaUsuarios.usuarios}" var="u">
						<tr>
							<td>${u.getId()}</td>
							<td>${u.getUsuario()}</td>
							<td>${u.getEmail()}</td>
							<td>${u.getPass()}</td>
							<td>${u.getPassverificacion()}</td>
							<td><a href="editarForm?idUsuario=${u.getId()}"
								class="btn btn-dark btn-sm m-1">Editar</a><a
								href="eliminar?idUsuario=${u.getId()}"
								class="btn btn-danger btn-sm m-1">Eliminar</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<!-- Fin tabla -->
		</div>
	</div>
	
	<div class="container pb-2">
		<div class="d-flex justify-content-center my-5">
			<a href="logout" class="btn btn-danger btn-md">Cerrar sesion</a>
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