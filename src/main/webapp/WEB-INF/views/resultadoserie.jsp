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
				<a href="user" class="navbar-brand text-Light"><img src="img/SHOWFLIX.svg" alt="..." width="50%"></a>

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
			<h1 style="font-size: 70px; text-align: center;">Resultado busqueda</h1>
		</div>
	</div>
	
	<div class="container py-1">
		<div class="d-flex justify-content-center my-5">
			<img src="/img/undraw_home_cinema_l7yl.svg" class="img-fluid"
				alt="" width="25%">
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
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${serieResultado}" var="u">
						<tr>
							<td>${u.getId()}</td>
							<td>${u.getTitle()}</td>
							<td>${u.getRed()}</td>
							<td>${u.getRating()}/5</td>
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