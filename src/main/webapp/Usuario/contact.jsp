<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=0.75">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

  <title>Ergo Proxy - Compra y venta de juegos</title>

  <!-- Bootstrap core CSS -->
  <link href="<%=request.getContextPath()%>/Usuario/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/Usuario/assets/css/fontawesome.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/Usuario/assets/css/estilo_usuario.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/Usuario/assets/css/owl.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/Usuario/assets/css/animate.css">
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
            <li><a href="<%=request.getContextPath()%>/ServletTendencias">Comprar juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/compras_juegos_page.jsp">Mis juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/ServletTendencias?a=vender">Vender juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/ServletJuegoPosteado">Tus ventas</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/contact.jsp" class="active">Contáctanos</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/login_page.jsp">Inicia sesión</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/perfil_user_page.jsp">Perfil<img src="<%=request.getContextPath()%>/Usuario/assets/images/profile-header.jpg" style="border-radius: 50%;
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

<div class="main-banner">
  <div class="container">

    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">
          <hr/>
          <h2>Contacto </h2>
          <hr/>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">

          <!-- Perfil de usuario-->

          <div class = "col">
            <div class="form-group">
              <h6>¡Hola!:</h6>
              <br>
              <p style="margin-bottom: 5%"> Si deseas contactarte con nosotros por favor envíanos tus datos y gustosos te atenderemos:
              </p>
            </div>
            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon1">Nickname:</span>
              <input type="text" class="form-control" id="nickname" value="@tuchiquitocraftero123" readonly>
            </div>
            <div class="input-group mb-3">
              <span class="input-group-text">Nombre:</span>
              <input type="text" class="form-control" aria-label="Nombre">
              <span class="input-group-text">Apellido:</span>
              <input type="text" class="form-control" aria-label="Apellido">
            </div>

            <div class="input-group mb-3">
              <span class="input-group-text" id="basic-addon2">Correo:</span>
              <input type="text" class="form-control" aria-label="Correo" aria-describedby="Correo">
            </div>


          </div>


          <div class="row outsession">
            <div class="d-grid gap-2 mx-auto mb-3">
              <button type="submit" class="btn btn-secondary btn-block">
                <i class="fa fa-save"></i> Guardar y enviar
              </button>
            </div>
          </div>

        </div>
      </div>
      <!--Acá finaliza perfil-->


      <div class="col-lg-4 offset-lg-1">
        <div class="right-image">
          <img src="https://images.hola.com/imagenes/mascotas/20201104178485/consejos-gatos-para-principiantes/0-884-859/gatito-m.jpg?tx=w_680" alt="">
        </div>
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
<script src="<%=request.getContextPath()%>/Usuario/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/isotope.min.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/owl-carousel.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/counter.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/custom.js"></script>
</body>
</html>