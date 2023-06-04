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
            <li><a href="vender_juegos_page.jsp" class="active">Vender juegos</a></li>
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

<div class="main-banner" style="padding: 140px">
  <div class="container">

    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">
          <hr/>
          <h3 style="font-size: 40px">Publicar solicitud de venta </h3>
          <hr/>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">

          <!-- Formulario de venta-->
          <div class = "row venta">
            <div class="form-group">
              <h5>Ingrese nombre del juego:</h5>
              <input type="text" class="form-control" aria-label="nombre_juego">
            </div>

            <div class="form-group">
              <h5>Descripción:</h5>
              <textarea class="form-control" id="descripcion_venta"  aria-label="descripcion_venta" rows="3" style="height: 150px"></textarea>
            </div>

            <div class="form-group">
              <div class="row">
                <div class="col">
                  <h5>Precio unitario:</h5>
                  <input type="text" class="form-control" id="precio" aria-label="precio">
                </div>
                <div class="col">
                  <h5>Unidades:</h5>
                  <input type="number" class="form-control" id="unidades" aria-label="unidades" min="0">
                </div>
                <div class="col">
                  <h5>Precio total:</h5>
                  <input type="text" id="ptotal" aria-label="ptotal" class="form-control" value="S/. 200" readonly>
                </div>
              </div>

              <div class="row">
                <div class="col">
                  <h5>Consola:</h5>
                  <select class="form-control" id="consola">
                    <option disabled selected>Selecciona una consola</option>
                    <option>PlayStation</option>
                    <option>Xbox</option>
                    <option>Nintendo</option>
                    <option>PC</option>
                  </select>
                </div>
                <div class="col">
                  <h5>Género:</h5>
                  <select class="form-control" id="genero">
                    <option disabled selected>Selecciona un género</option>
                    <option>Acción</option>
                    <option>Aventura</option>
                    <option>Deporte</option>
                    <option>Estrategia</option>
                    <option>Rol</option>
                  </select>
                </div>
              </div>




            </div>

          </div>
        </div>
      </div>
      <!--Acá finaliza formulario-->


      <div class="col-lg-4 offset-lg-1">
        <div class="right-image">
          <h5 style="color: white; margin-bottom: 15px; margin-top: 30px" >Subir Imagen:</h5>
          <img class="card-img-top" src="https://via.placeholder.com/200" alt="Imagen del juego" id="imagen" alt="Imagen" style="cursor: pointer;">
          <input type="file" id="archivo" style="display: none;">
        </div>
      </div>
    </div>

    <div class="row" style="margin-top: 50px">
      <div class="col-lg-3 ">
      </div>

      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">
          <div class="row">
            <div class="d-grid gap-2 mx-auto mb-3">
              <button type="submit" class="btn btn-secondary btn-block" onclick="window.location.href = 'juego_pendiente.html'">
                <i class="fa fa-save"></i> Finalizar Solicitud
              </button>
            </div>
          </div>


          <div class="row">
            <div class="d-grid gap-2 mx-auto mb-3">
              <button class="btn btn-danger btn-lg" onclick="window.location.href = 'tendencia_juegos_page.html'">Cancelar solicitud</button>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 align-self-center">
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
<script>
  const imagen = document.getElementById('imagen');
  const archivo = document.getElementById('archivo');

  imagen.addEventListener('click', () => {
    archivo.click();
  });
</script>

</body>
</html>