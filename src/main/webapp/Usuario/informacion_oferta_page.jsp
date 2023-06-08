<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.beans.Juegos" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.daos.JuegosDaoUsuario" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%Juegos juegos = (Juegos) request.getAttribute("juegos");%>
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
          <a href="<%=request.getContextPath()%>/ServletTendencias" class="logo">
            <img src="<%=request.getContextPath()%>/Usuario/assets/images/logo.png" alt="" style="width: 65px;">
          </a>
          <!-- ***** Logo End ***** -->
          <!-- ***** Menu Start ***** -->
          <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/ServletTendencias">Comprar juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/compras_juegos_page.jsp">Mis juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/vender_juegos_page.jsp">Vender juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/ServletJuegoPosteado">Tus ventas</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/contact.jsp">Contáctanos</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/login_page.jsp">Inicia sesión</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/perfil_user_page.jsp">Perfil<img src="assets/images/profile-header.jpg" style="border-radius: 50%;
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
          <h2>Informacion juegos </h2>
          <hr/>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">
          <h3><%=juegos.getNombre()%></h3>
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
            <label>S/<%=juegos.getPrecio_unidad()%></label>
          </div>
          <br>

          <div class="form-group">
            <h6>Descripción:</h6>
            <p> <%=juegos.getDescripcion()%>
            </p>
          </div>
          <!-- Crear el grupo del campo género -->
          <div class="form-group">
            <h6>Género:</h6>
            <label><%=juegos.getGenero()%></label>
          </div>
          <br>

          <!-- Crear el grupo del campo stock -->
          <div class="form-group">
            <h6>Stock disponible:</h6>
            <!--<input type="number" class="form-control" id="stock" min="0"> <label>unidades</label>-->
            <label><%=juegos.getCantidad_stock()%>unidades</label>
          </div>
          <br>

          <div class="right-objeto">
            <div class="main-button">
              <a href="<%=request.getContextPath()%>/Usuario/metodo_compra_page.jsp">Comprar</a>
            </div>
          </div>
          <br>

          <div class="left-objeto">
            <button type="submit" class="btn btn-warning btn-block">
              <span class="fa fa-star"></span><a href="<%=request.getContextPath()%>/Usuario/valorar_juego_page.jsp" style="color: black">Añadir valoración</a>
            </button>
          </div>


        </div>
      </div>


      <div class="col-lg-5 offset-lg-1">
        <div class="right-image">
          <img src="https://image.api.playstation.com/vulcan/img/rnd/202010/2618/w48z6bzefZPrRcJHc7L8SO66.png" alt="">
          <span class="offer-text">Oferta!</span>
          <span class="offer">-90%</span>
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
        <h2>Valoraciones:</h2>
        <br>
        <label>User1232</label>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span>
        <textarea class="form-control" id="descripcion1" rows="3" readonly>Es un juego muy esperado por todos, pero debo decir que el final dejó qué pensar y solo por eso no lo puntúo con 5 estrellas. Por lo demás, excelente.
        </textarea>
        <br>
        <label>Leon23</label>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <textarea class="form-control" id="descripcion2" rows="3" readonly>Muy buen juego! Me encantó, lo tiene todo para ser el juego más jugado del año, una carta de amor a los videjuegos.
        </textarea>
        <br>
        <label>yovoyaganar</label>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star "></span>
        <span class="fa fa-star"></span>
        <textarea class="form-control" id="descripcion3" rows="3" readonly>Debo decir que no me termina de convencer mucho por la forma en la que aborda las historias apocalipticas, ya es algo repetitivo pero de todos modos el juego no está mal construido.
        </textarea>
        <br>
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