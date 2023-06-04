<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=0.75">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

  <title>Lugx Gaming Shop HTML5 Template</title>

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
            <li><a href="mis_juegos_page.jsp">Mis juegos</a></li>
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

<div class="main-banner" style="margin-bottom: 20px; padding: 150px">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">
          <h6>Has escogido: <em>The last Of Us 2</em></h6>
          <h2> Buena elección!</h2>
          <p> The Last of Us Part II es un videojuego de terror y de acción y a
            venturas de 2020 desarrollado por Naughty Dog y publicado por Sony
            Interactive Entertainment para PlayStation 4. Ambientado cinco años
            después de The Last of Us (2013), el juego se centra en dos personajes
            jugables en un Estados Unidos post-apocalíptico cuyas vidas se entrelazan:
            Ellie, que busca venganza después de sufrir una tragedia, y Abby, una soldado
            que se ve envuelta en un conflicto entre su milicia y un culto religioso.
          </p>
          <div class="card-body">
            <h6>Star Rating:</h6>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
          </div>
          <br>
          <div class="form-group">
            <h6>Género:</h6>
            <label>Terror</label>
          </div>
          <br>
          <p>Ya falta poco, a continuación te pedimos que escojas la opción de tu preferencia:</p>
        </div>
      </div>

      <div class="col-lg-4 offset-lg-2">
        <div class="right-image">
          <img src="assets/images/banner-image.jpg" alt="">
          <span class="price">$22</span>
          <span class="offer">-90%</span>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="features">
  <div class="container">
    <div class="row">

      <div class="col-lg-1 col-md-6">

      </div>

      <div class="col-lg-5 col-md-6">
        <a href="compra_delivery_page.jsp">
          <div class="item">
            <div class="image">
              <img src="assets/images/featured-05.png" alt="" style="max-width: 44px;; border-radius: 50%">
            </div>
            <h4>ENVÍO POR DELIVERY</h4>
          </div>
        </a>
      </div>

      <div class="col-lg-5 col-md-6">
        <a href="compra_recojo.jsp">
          <div class="item">
            <div class="image">
              <img src="assets/images/featured-06.png" alt="" style="max-width: 44px; border-radius: 50%">
            </div>
            <h4>RECOGER ENTREGA</h4>
          </div>
        </a>
      </div>

      <div class="col-lg-1 col-md-6">
      </div>

    </div>
  </div>
</div>

<div class="section trending" style="margin-top: 80px">
  <div class="container">

    <div class="row">
        <div class="caption header-text">
          <hr/>
          <h4>Complete lo solicitado:</h4>
          <hr/>
        </div>
    </div>

    <div class="row">
      <div class="caption header-text">
        <form>
          <div class="input-group mb-3">
            <span class="input-group-text">Nombre:</span>
            <input type="text" class="form-control" aria-label="Nombre">
            <span class="input-group-text">Apellido:</span>
            <input type="text" class="form-control" aria-label="Apellido">
          </div>

          <div class="input-group mb-3">
            <span class="input-group-text">Tarjeta:</span>
            <input type="text" class="form-control" id="numero-tarjeta" name="numero-de-tarjeta" pattern="\d{4}-\d{4}-\d{4}-\d{4}" placeholder="XXXX-XXXX-XXXX-XXXX" required>
            <div class="form-group" style="margin-left: 5%">
              <select class="form-control" id="tarjeta">
                <option disabled selected>Selecciona tipo de tarjeta</option>
                <option>Visa</option>
                <option>Mastercard</option>
                <option>American Express</option>
              </select>
            </div>

          </div>
          <div class="row">
            <div class="caption header-text">
              <hr/>
              <h4>Dirección</h4>
              <hr/>
            </div>
          </div>

          <div class="input-group mb-3">
            <span class="input-group-text">Departamento:</span>
            <input type="text" class="form-control" aria-label="Departamento">
            <span class="input-group-text">Provincia:</span>
            <input type="text" class="form-control" aria-label="Provincia">
            <span class="input-group-text">Distrito:</span>
            <input type="text" class="form-control" aria-label="Ciudad">
          </div>
          <input type="text" id="direccion" class="form-control" placeholder="Ingrese su dirección específica" aria-label="Direccion">
          <div class="input-group mb-3" >
          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2891.364263110912!2d-76.82199190143653!3d-11.993434093818076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2spe!4v1685520070847!5m2!1ses!2spe"
                  width="100%" height="400" style="border-radius: 30px; margin-top: 4%" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>

          <div style="margin-top: 40px">
            <div class="row">
              <div class="d-grid gap-2 mx-auto mb-3 col-lg-4">
                <button type="submit" class="btn btn-outline-primary" >Confirmar compra</button>
              </div>
            </div>
            <div class="row">
              <div class="d-grid gap-2 mx-auto mb-3 col-lg-4">
                <button class="btn btn-danger btn-lg">Cancelar compra</button>
              </div>
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>

<div class="section most-played">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="section-heading">
          <h6>Más juegos</h6>
          <h2>Juegos relacionados</h2>
        </div>
      </div>

      <div class="col-lg-6">
        <div class="main-button">
          <a href="listajuego.html">Ver todos</a>
        </div>
      </div>

      <div class="col-lg-2 col-md-6 col-sm-6">
        <div class="item">
          <div class="thumb">
            <a href="#"><img src="assets/images/top-game-01.jpg" alt=""></a>
          </div>
          <div class="down-content">
            <span class="category">Adventure</span>
            <h4>Assasin Creed</h4>
            <a href="#">Explorar</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-6 col-sm-6">
        <div class="item">
          <div class="thumb">
            <a href="#"><img src="assets/images/top-game-02.jpg" alt=""></a>
          </div>
          <div class="down-content">
            <span class="category">Adventure</span>
            <h4>Assasin Creed</h4>
            <a href="#">Explorar</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-6 col-sm-6">
        <div class="item">
          <div class="thumb">
            <a href="#"><img src="assets/images/top-game-03.jpg" alt=""></a>
          </div>
          <div class="down-content">
            <span class="category">Adventure</span>
            <h4>Assasin Creed</h4>
            <a href="#">Explorar</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-6 col-sm-6">
        <div class="item">
          <div class="thumb">
            <a href="#"><img src="assets/images/top-game-04.jpg" alt=""></a>
          </div>
          <div class="down-content">
            <span class="category">Adventure</span>
            <h4>Assasin Creed</h4>
            <a href="#">Explorar</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-6 col-sm-6">
        <div class="item">
          <div class="thumb">
            <a href="#"><img src="assets/images/top-game-05.jpg" alt=""></a>
          </div>
          <div class="down-content">
            <span class="category">Adventure</span>
            <h4>Assasin Creed</h4>
            <a href="#">Explorar</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-6 col-sm-6">
        <div class="item">
          <div class="thumb">
            <a href="#"><img src="assets/images/top-game-06.jpg" alt=""></a>
          </div>
          <div class="down-content">
            <span class="category">Adventure</span>
            <h4>Assasin Creed</h4>
            <a href="#">Explorar</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="section categories">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="section-heading">
          <h6>Categorías</h6>
          <h2>Top Categorías</h2>
        </div>
      </div>
      <div class="col-lg col-sm-6 col-xs-12">
        <div class="item">
          <h4>Action</h4>
          <div class="thumb">
            <a href="#"><img src="assets/images/categories-01.jpg" alt=""></a>
          </div>
        </div>
      </div>
      <div class="col-lg col-sm-6 col-xs-12">
        <div class="item">
          <h4>Action</h4>
          <div class="thumb">
            <a href="#"><img src="assets/images/categories-05.jpg" alt=""></a>
          </div>
        </div>
      </div>
      <div class="col-lg col-sm-6 col-xs-12">
        <div class="item">
          <h4>Action</h4>
          <div class="thumb">
            <a href="#"><img src="assets/images/categories-03.jpg" alt=""></a>
          </div>
        </div>
      </div>
      <div class="col-lg col-sm-6 col-xs-12">
        <div class="item">
          <h4>Action</h4>
          <div class="thumb">
            <a href="#"><img src="assets/images/categories-04.jpg" alt=""></a>
          </div>
        </div>
      </div>
      <div class="col-lg col-sm-6 col-xs-12">
        <div class="item">
          <h4>Action</h4>
          <div class="thumb">
            <a href="#"><img src="assets/images/categories-05.jpg" alt=""></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="section cta">
  <div class="container">
    <div class="row">
      <div class="col-lg-5">
        <div class="shop">
          <div class="row">
            <div class="col-lg-12">
              <div class="section-heading">
                <h6>Nosotros</h6>
                <h2>Compra y obtén los mejores <em>precios</em> para ti!</h2>
              </div>
              <p>No dejes pasar la oportidad. Tenemos las mejores ofertas todos los meses en los mejores juegos y
                sagas.</p>
              <div class="main-button">
                <a href="listajuego.html">Compra ahora</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-5 offset-lg-2 align-self-end">
        <div class="subscribe">
          <div class="row">
            <div class="col-lg-12">
              <div class="section-heading">
                <h6>NEWSLETTER</h6>
                <h2>Obtén S/.50 de descuento<em> Suscríbete</em> al Newsletter!</h2>
              </div>
              <div class="search-input">
                <form id="subscribe" action="#">
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                         placeholder="Tu correo...">
                  <button type="submit">Subscríbete ahora</button>
                </form>
              </div>
            </div>
          </div>
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
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/isotope.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/counter.js"></script>
<script src="assets/js/custom.js"></script>
<script>
  const inputNumeroTarjeta = document.getElementById('numero-tarjeta');
  inputNumeroTarjeta.addEventListener('input', (event) => {
    const { value } = event.target;
    const formattedValue = formatNumber(value);
    event.target.value = formattedValue;
  });

  function formatNumber(value) {
    // Eliminar todos los caracteres que no sean dígitos
    const cleanValue = value.replace(/\D/g, '');

    // Agregar guiones cada cuatro caracteres
    const formattedValue = cleanValue.replace(/(\d{4})(?=\d)/g, '$1-');

    return formattedValue;
  }
</script>


</body>

</html>