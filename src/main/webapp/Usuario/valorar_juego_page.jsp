<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=0.75">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
  <link  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
         rel="stylesheet">

  <title>Ergo Proxy - Compra y venta de juegos</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="assets/css/fontawesome.css">
  <link rel="stylesheet" href="assets/css/estilo_usuario.css">
  <link rel="stylesheet" href="assets/css/owl.css">
  <link rel="stylesheet" href="assets/css/animate.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

  <!--

TemplateMo 589 lugx gaming

https://templatemo.com/tm-589-lugx-gaming

-->
</head>

<body>

<!-- ***** Preloader Start ***** -->
<div id="js-preloader" class="js-preloader">
  <div class="preloader-inner">
    <span class="dot"></span>
    <div class="dots">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>
</div>
<!-- ***** Preloader End ***** -->

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <nav class="main-nav">
          <!-- ***** Logo Start ***** -->
          <a href="index.html" class="logo">
            <img src="assets/images/logo.png" alt="" style="width: 65px;">
          </a>
          <!-- ***** Logo End ***** -->
          <!-- ***** Menu Start ***** -->
          <ul class="nav">
            <li><a href="tendencia_juegos_page.jsp">Comprar juegos</a></li>
            <li><a href="compras_juegos_page.jsp">Mis juegos</a></li>
            <li><a href="vender_juegos_page.jsp">Vender juegos</a></li>
            <li><a href="mis_ventas_page.jsp">Tus ventas</a></li>
            <li><a href="contact.jsp">Contáctanos</a></li>
            <li><a href="login_page.jsp">Inicia sesión</a></li>
            <li><a href="perfil_user_page.jsp">Perfil<img src="assets/images/profile-header.jpg" style="border-radius: 50%;
                margin-left: 5px; max-width: 30%;" alt=""></a></li>
          </ul>
          <a class='menu-trigger'>
            <span>Menu</span>
          </a>
          <!-- ***** Menu End ***** -->
        </nav>
      </div>
    </div>
  </div>
</header>
<!-- ***** Header Area End ***** -->

<!-- Info del juego-->
<div class="main-banner" style="margin-bottom: 30px; padding: 110px">
  <div class="container">

    <div class="row">
      <div class="align-self-center">
        <div class="caption header-text">
          <hr/>
          <h2>Información de juego </h2>
          <hr/>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">

          <h3>The last of us 2 </h3>
          <div class="card-body">
            <h6>Star Rating:</h6>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
          </div>
          <br>

          <!-- Crear el grupo del campo precio -->
          <div class="form-group">
            <h6>Precio:</h6>
            <label>S/.280</label>
            <br>
          </div>

          <br>

          <div class="form-group">
            <h6>Descripción:</h6>
            <p> The Last of Us Part II es un videojuego de terror y de acción y a
              venturas de 2020 desarrollado por Naughty Dog y publicado por Sony
              Interactive Entertainment para PlayStation 4. Ambientado cinco años
              después de The Last of Us (2013), el juego se centra en dos personajes
              jugables en un Estados Unidos post-apocalíptico cuyas vidas se entrelazan:
              Ellie, que busca venganza después de sufrir una tragedia, y Abby, una soldado
              que se ve envuelta en un conflicto entre su milicia y un culto religioso.
            </p>
          </div>
          <!-- Crear el grupo del campo género -->
          <div class="form-group">
            <h6>Género:</h6>
            <label>Terror</label>
          </div>
          <br>

          <!-- Crear el grupo del campo stock -->
          <div class="form-group">
            <h6>Stock disponible:</h6>
            <!--<input type="number" class="form-control" id="stock" min="0"> <label>unidades</label>-->
            <label>23 unidades</label>
          </div>
          <br>

        </div>
      </div>


      <div class="col-lg-5 offset-lg-1">
        <div class="right-image">
          <img src="https://image.api.playstation.com/vulcan/img/rnd/202010/2618/w48z6bzefZPrRcJHc7L8SO66.png" alt="">
        </div>

      </div>

    </div>

  </div>
</div>
      <!--Acá finaliza info del juego-->


<div class = "trending">


</div>

<div class="most-played">
  <div class="container">
    <div class="row">
      <!--Comentarios-->
      <div class="form-group">
        <form>
          <h2>Valoraciones:</h2>
          <br>
          <label>User1232</label>
          <span class="fa fa-star"></span>
          <span class="fa fa-star"></span>
          <span class="fa fa-star"></span>
          <span class="fa fa-star"></span>
          <span class="fa fa-star"></span>
          <textarea class="form-control" id="descripcion1" rows="3" placeholder="Añade acá tu valoración"></textarea>
          <br>
          <div class="right-object">
            <button type="submit" class="btn btn-warning btn-block">
              <span class="fa fa-star"></span><a href="listajuego.html" style="color: black">Añadir valoración</a>
            </button>
          </div>
        </form>


      </div>
    </div>
  </div>
</div>



<footer>
  <div class="container">
    <div class="col-lg-12">
      <p>Copyright © 2023 ERGO PROXY Gaming Company. Todos los derechos reservados. Diseñado para el cursos de
        Ingeniería web PUCP.</p>
    </div>
  </div>
</footer>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/isotope.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/counter.js"></script>
<script src="assets/js/custom.js"></script>

</body>
</html>