<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.beans.JuegoPosteadoUsuario" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.daos.JuegosPosteadosDaoUsuario" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.beans.Juegos" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.daos.JuegosDaoUsuario" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%JuegoPosteadoUsuario juegoPosteadoUsuario = (JuegoPosteadoUsuario) request.getAttribute("jueguito_2");%>


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
          <a href="<%=request.getContextPath()%>/Usuario/index.html" class="logo">
            <img src="<%=request.getContextPath()%>/Usuario/assets/images/logo.png" alt="" style="width: 65px;">
          </a>
          <!-- ***** Logo End ***** -->
          <!-- ***** Menu Start ***** -->
          <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/ServletTendencias">Comprar juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/compras_juegos_page.jsp">Mis juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/ServletTendencias?a=vender">Vender juegos</a></li>
            <li><a href="<%=request.getContextPath()%>/ServletJuegoPosteado">Tus ventas</a></li>
            <li><a href="<%=request.getContextPath()%>/Usuario/contact.jsp">Contáctanos</a></li>
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

<div class="main-banner" style="padding: 140px">
  <div class="container">
    <input type="hidden" class="form-group" name="id_publicacion_usuario" id="id_publicacion_usuario">
    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">
          <hr/>
          <h3 style="font-size: 35px"><%=juegoPosteadoUsuario.getNombre_juego_nuevo()%>: Juego Rechazado </h3>
          <hr/>
        </div>
      </div>
    </div>
    <div class="row venta">
      <div class="form-group">
        <h5>Motivo por el que fue rechazado:</h5>
        <textarea class="form-control" id="descripcion_editar"  aria-label="descripcion_editar" rows="3" style="height: 200px" readonly><%=juegoPosteadoUsuario.getMotivo_rechazo()%></textarea>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="caption header-text">

          <!-- Formulario de venta-->
          <div class = "row venta">
            <div class="form-group">
              <h5>Nombre del juego:</h5>
              <input type="text" class="form-control" aria-label="nombre_juego" value="<%=juegoPosteadoUsuario.getNombre_juego_nuevo()%>" readonly>
            </div>

            <div class="form-group">
              <h5>Descripción:</h5>
              <textarea class="form-control" id="descripcion_venta"  aria-label="descripcion_venta" rows="3" style="height: 150px" readonly><%=juegoPosteadoUsuario.getDescripcion_juego_nuevo()%></textarea>
            </div>

            <div class="form-group">
              <div class="row">
                <div class="col">
                  <h5>Precio unitario:</h5>
                  <input type="text" class="form-control" id="precio" aria-label="precio" value="<%=juegoPosteadoUsuario.getPrecio_venta_usuario()%>" readonly>
                </div>
                <div class="col">
                  <h5>Unidades:</h5>
                  <input type="number" class="form-control" id="unidades" aria-label="unidades" min="0" value="5" readonly>
                </div>
                <div class="col">
                  <h5>Precio total:</h5>
                  <input type="text" id="ptotal" aria-label="ptotal" class="form-control" value="S/. 200" readonly>
                </div>
              </div>

              <div class="row">
                <div class="col">
                  <h5>Consola:</h5>
                  <select class="form-control" id="consola" name="consola">
                    <option disabled selected>Selecciona una consola</option>
                    <option disabled selected>PlayStation</option>
                    <option disabled selected>Xbox</option>
                    <option disabled selected>Nintendo</option>
                    <option disabled selected>PC</option>
                  </select>
                </div>
                <div class="col">
                  <h5>Género:</h5>
                  <select class="form-control" id="genero" name="genero">
                    <option disabled selected>Selecciona un género</option>
                    <option disabled selected>Acción</option>
                    <option disabled selected>Aventura</option>
                    <option disabled selected>Deporte</option>
                    <option disabled selected>Estrategia</option>
                    <option disabled selected>Rol</option>
                  </select>
                </div>
              </div>




            </div>

          </div>
        </div>
      </div>
      <!--Acá finaliza formulario-->


      <div class="col-lg-4 offset-lg-2">
        <div class="right-image">
          <h5 style="color: white; margin-bottom: 15px; margin-top: 30px" >Imagen Subida:</h5>
          <img class="card-img-top" src="<%=request.getContextPath()%>/Usuario/assets/images/single-game.jpg" alt="Imagen del juego" id="imagen" alt="Imagen" style="cursor: pointer;">
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
              <button type="submit" class="btn btn-secondary btn-block" onclick="window.location.href = '<%=request.getContextPath()%>/Usuario/vender_juegos_page.jsp'">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                  <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                </svg> Enviar otra solicitud
              </button>
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
<script src="<%=request.getContextPath()%>/Usuario/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/isotope.min.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/owl-carousel.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/counter.js"></script>
<script src="<%=request.getContextPath()%>/Usuario/assets/js/custom.js"></script>

</body>
</html>