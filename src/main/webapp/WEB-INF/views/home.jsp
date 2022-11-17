<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="cl.desafiolatam.imdb.modelo.UsuarioImdb"%>
<%@page import="cl.desafiolatam.imdb.vo.UsuarioImdbVO"%>
<%@page import="cl.desafiolatam.imdb.modelo.Serie"%>
<%@page import="cl.desafiolatam.imdb.vo.SerieVO"%>
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
<title>SHOWFLIX&copy;</title>
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
						<li class="nav-item"><a href="logout"
							class="nav-link text-light" id="navbar_link">Cerrar sesion</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>
	<!-- Fin Header -->

	<div class="container pt-1">
		<div class="d-flex justify-content-center my-4">
			<h1 style="font-size: 70px; text-align: center;">¡Bienvenido a
				Showflix!</h1>
		</div>
	</div>

	<div class="container pt-3">
		<div class="row align-items-center p-3">
			<div class="col-md-6 container py-1">
				<div class="d-flex justify-content-center my-5">
					<img src="/img/undraw_video_influencer_-9-oyy.svg" class="img-fluid"
						alt="" width="90%">
				</div>
			</div>
			<div class="col-md-6 p-3">
				<div class="pb-2">
					<div class="d-flex justify-content-center">
						<h2>Agregar serie</h2>
					</div>
				</div>
				<form action="agregarSerie" method="post">
					<div class="row g-2">
						<div class="">
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid"
									placeholder="name@example.com" name="title" required> <label
									for="floatingInputGrid">Titulo</label>
							</div>
						</div>
						<div class="">
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid"
									placeholder="name@example.com" name="red" required> <label
									for="floatingInputGrid">Network</label>
							</div>
						</div>
						<div class="">
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid"
									placeholder="name@example.com" name="rating" required>
								<label for="floatingInputGrid">Rating</label>
							</div>
						</div>
					</div>
					<!-- Botón agregar producto -->
					<div class="d-flex justify-content-end mt-1">
						<input type="submit" class="btn m-2 btn-dark" value="Añadir" />
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="d-flex justify-content-center pb-2">
		<div class="container row">
			<div class="col-md-4">
				<div class="d-flex justify-content-center">
					<h2>Buscar serie</h2>
				</div>
			</div>
			<div class="col-md-8">
				<form action="buscarSerie" method="get">
					<div class="row g-2">
						<div class="col-md">
							<div class="form-floating">
								<input type="text" class="form-control" id="floatingInputGrid"
									value="" name="nombreSerie" required> <label
									for="floatingInputGrid">Serie</label>
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
						<th scope="col">Titulo</th>
						<th scope="col">Network</th>
						<th scope="col">Rating</th>
						<th scope="col">Editar productos</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listaSeries.series}" var="u">
						<tr>
							<td>${u.getId()}</td>
							<td>${u.getTitle()}</td>
							<td>${u.getRed()}</td>
							<td>${u.getRating()}/5</td>
							<td><a href="editarFormSerie?idSerie=${u.getId()}"
								class="btn btn-dark btn-sm m-1">Editar</a><a
								href="eliminarSerie?idSerie=${u.getId()}"
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
				<a class="btn btn-link btn-floating btn-lg text-danger m-1"
					href="#!" role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-facebook-f"></i></a>

				<!-- Twitter -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1"
					href="#!" role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-twitter"></i></a>

				<!-- Google -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1"
					href="#!" role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-google"></i></a>

				<!-- Linkedin -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1"
					href="#!" role="button" data-mdb-ripple-color="dark"><i
					class="fab fa-linkedin"></i></a>
				<!-- Github -->
				<a class="btn btn-link btn-floating btn-lg text-danger m-1"
					href="#!" role="button" data-mdb-ripple-color="dark"><i
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