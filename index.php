<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Agranel Del campo a tu mesa</title>
	<link rel="icon" href="media/icon_agranel.ico">
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700|Oswald&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.7/fullpage.css">
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<nav class="nav">
		<a href="#inicio"><img src="media/icon_agranel.png" class="marca"></a>

		<form class='search' action="" method="post">
		<input type="text" name="search" placeholder="Buscar" class='search_text'>&nbsp
		<input type="submit" onclick="location.href='index.php#productos'" name="buscar" value="Buscar"class='search_submit'>
		</form>
			<!-- <a href="#inicio"class="marca">Agranel</a> -->
		<ul id="menu" class="menu">
		<?php
			include('controller/login.php');
			include('controller/show_menu_acceder.php');
			?>

			<li data-menuanchor="inicio" class="active">
				<a href="#inicio">Inicio</a>
			</li>

			<li data-menuanchor="productos">
				<a href="#productos">Productos</a>
			</li>

			<li data-menuanchor="nosotros">
				<a href="#nosotros">Nosotros</a>
			</li>
			
			<li data-menuanchor="noticias">
				<a href="#noticias">Noticias</a>
			</li>
			<li data-menuanchor="contacto">
				<a href="#contacto">Contacto</a>
			</li>

			<!--<li data-menuanchor="acceder">
				<a href="login.php">Acceder</a>
			</li>-->
			<li data-menuanchor="comprar">
				<a href="html/carrito.php"><i class="fas fa-shopping-basket"></i></a>
			</li>

			
		</ul>

	</nav>


	<main id="fullpage">
		<header class="section header">
		
			<div class="contenedor-titulo">
				<h1 class="titulo">
					<span class="texto-naranja">Nuestras verduras además de ser ecológicas</span>
					<span class="texto-blanco">son recien recolectadas</span>
				</h1>
				
			</div>
			<div class="contenedor-icono">
				<p><a href="#productos" class="texto-naranja"><i class="fas fa-chevron-down"></i></a></p>
			</div>

			<!-- Video-->
			<!-- <video loop muted data-autoplay class="bg-video">
				<source src="media/bg-video.m4v"type="video/mp4">

			</video>-->

			</header>

		<section class="section productos">


		<?php
			  include('controller/show_products_home.php');
		?>

			
		</section>

		<section class="section nosotros">


		<div class="cont_img">
			<img src="media/juragis.png" class="image">
			<img src="media/juan.png" class="image">
			<img src="media/miguel.png" class="image">

		</div>
		<div class="texto-nombres">
		<h4>Juragis García</h4><h4>Juan Carlos Valcuende</h4><h4>Miguel Moral</h4>
</div>
		
			<div class="contenedor-texto-nosotros">

			<h3>
			<span class="texto-nosotros">Somos Juragis, Juan Carlos y Miguel, tres jóvenes estudiantes de 2º DAW y hemos realizado este Proyecto Web
				con la intención de acercar el producto agrícola directamente al cliente, reduciendo así el número de intermediarios.</span>
			</h3>
				
			</div>
			<div class="contenedor-icono">
				<p><a href="#noticias" class="texto-naranja"><i class="fas fa-chevron-down"></i></a></p>
			</div>
	
		</section>

		<section class="section noticias">
		
			<div class="contenedor-titulo">
				<h1 class="titulo">
					<span class="texto-naranja">En Agranel no paramos quietos, y es que en el campo siempre hay trabajo que hacer.</span>
					<span class="texto-blanco"> Aquí encontrarás las noticias más destacadas.</span>
				</h1>
								
			</div>
			<div class="contenedor-icono">
				<p><a href="#comprar" class="texto-naranja"><i class="fas fa-chevron-down"></i></a></p>
			</div>
	
		</section>

		

		<footer class="section footer">
			<h2 class="texto-naranja">Síguenos en redes sociales</h2>
			<p class="redes-sociales">
				<a href="#" class="facebook"> <i class="fab fa-facebook"></i></a>
				<a href="#" class="twiter"><i class="fab fa-twitter"></i></a>
				<a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
				<a href="mailto:jvalcuende@gmail.com" class="email"><i class="far fa-envelope"></i></a>
			</p>
			<p class="row-footer">
                &copy; 2020 Agranel - Todos los derechos reservados
            </p>		

		</footer>
	</main>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.7/fullpage.js"></script>
	<script src="js/app.js"></script>
</body>
</html>