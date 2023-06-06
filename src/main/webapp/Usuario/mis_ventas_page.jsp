<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.beans.JuegoPosteadoUsuario" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.daos.JuegosPosteadosDaoUsuario" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.beans.Juegos" %>
<%@ page import="com.example.proyectoiweb1.usuario.models.daos.JuegosDaoUsuario" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% ArrayList<JuegoPosteadoUsuario> listaJuegosPostedos = (ArrayList<JuegoPosteadoUsuario>) request.getAttribute("listaJuegosPosteados"); %>
<% ArrayList<Juegos> listaMasJugados = (ArrayList<Juegos>) request.getAttribute("listaMasJugados"); %>
<!DOCTYPE html>
<html lang="en">

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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/Usuario/assets/css/card_style.css">

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
                            <a href="<%=request.getContextPath()%>/index.jsp" class="logo">
                                <img src="<%=request.getContextPath()%>/Usuario/assets/images/logo.png" alt="" style="width: 65px;">
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="<%=request.getContextPath()%>/ServletTendencias">Comprar juegos</a></li>
                                <li><a href="<%=request.getContextPath()%>/ServletTendencias">Mis juegos</a></li>
                                <li><a href="<%=request.getContextPath()%>/Usuario/vender_juegos_page.jsp">Vender juegos</a></li>
                                <li><a href="<%=request.getContextPath()%>/Usuario/mis_ventas_page.jsp" class="active">Tus ventas</a></li>
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

        <!-- ***** Encabezado principal ***** -->
        <div class="main-banner">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 align-self-center">
                        <div class="caption header-text">
                            <h6>Bienvenido a Ergo Proxy</h6>
                            <h2> EL MEJOR GAMECENTER!</h2>
                            <p>Ergo Proxy es una tienda virtual en la que podrás encontrar el videojuego que estabas buscando e incluso
                                ir por una nueva experiencia.</p>
                            <div class="search-input">
                                <form id="search" action="#">
                                    <input type="text" placeholder="¿Qué juego estás buscando?" id='searchText' name="searchKeyword"
                                           onkeypress="handle" />
                                    <button role="button">Buscar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 offset-lg-2">
                        <div class="right-image">
                            <img src="<%=request.getContextPath()%>/Usuario/assets/images/banner-image.jpg" alt="">
                            <span class="price">$22</span>
                            <span class="offer">-90%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Fin de encabezado principal ***** -->

        <div class="section trending">
            <div class="container">
                <div class="row">

                    <div class="col-lg-9">
                        <div class="section-heading">
                            <h6>Mis ventas</h6>
                            <h2>Juegos propuestos a ser vendidos</h2>
                            <hr size="2px" color="gray"  style="height: 1px;"/>
                        </div>
                    </div>

                    <div class="col-lg-3">
                    </div>
                    <% for (JuegoPosteadoUsuario j : listaJuegosPostedos) { %>
                    <div class="col-lg-3 col-md-6">
                        <% if (j.getEstado_solicitud() == 1 ) { %>
                        <div class="item" style="background-color: #FFE4E1">
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/trending-01.jpg" alt=""></a>
                            </div>
                            <div class="down-content">
                                <span class="category"><%=j.getGenero_juego_nuevo()%></span>
                                <h5 class="card-title"><%=j.getNombre_juego_nuevo()%></h5>
                                <p class="card-text"><em><%=j.getEstado_solicitud()%></em></p>
                                <button role="button" class="btn btn-primary " onclick="window.location.href = 'juego_pendiente.jsp'">Más detalles</button>
                            </div>
                        </div>
                        <%}else if(j.getEstado_solicitud()==2){%>
                        <div class="item" style="background-color: #FFC0CB">
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/trending-01.jpg" alt=""></a>
                            </div>
                            <div class="down-content">
                                <span class="category"><%=j.getGenero_juego_nuevo()%></span>
                                <h5 class="card-title"><%=j.getNombre_juego_nuevo()%></h5>
                                <p class="card-text"><em><%=j.getEstado_solicitud()%></em></p>
                                <button role="button" class="btn btn-primary " onclick="window.location.href = 'juego_pendiente.jsp'">Más detalles</button>
                            </div>
                        </div>
                        <%}else if(j.getEstado_solicitud()==3){%>
                        <div class="item" style="background-color: #E6E6FA">
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/trending-01.jpg" alt=""></a>
                            </div>
                            <div class="down-content">
                                <span class="category"><%=j.getGenero_juego_nuevo()%></span>
                                <h5 class="card-title"><%=j.getNombre_juego_nuevo()%></h5>
                                <p class="card-text"><em><%=j.getEstado_solicitud()%></em></p>
                                <button role="button" class="btn btn-primary " onclick="window.location.href = 'juego_pendiente.jsp'">Más detalles</button>
                            </div>
                        </div>
                        <%}else if(j.getEstado_solicitud()==4){%>
                        <div class="item">
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/trending-01.jpg" alt=""></a>
                            </div>
                            <div class="down-content">
                                <span class="category"><%=j.getGenero_juego_nuevo()%></span>
                                <h5 class="card-title"><%=j.getNombre_juego_nuevo()%></h5>
                                <p class="card-text"><em><%=j.getEstado_solicitud()%></em></p>
                                <button role="button" class="btn btn-primary " onclick="window.location.href = 'juego_pendiente.jsp'">Más detalles</button>
                            </div>
                        </div>
                        <%}else if(j.getEstado_solicitud()==5){%>
                        <div class="item" style="background-color: #778899">
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/trending-01.jpg" alt=""></a>
                            </div>
                            <div class="down-content">
                                <span class="category"><%=j.getGenero_juego_nuevo()%></span>
                                <h5 class="card-title"><%=j.getNombre_juego_nuevo()%></h5>
                                <p class="card-text"><em><%=j.getEstado_solicitud()%></em></p>
                                <button role="button" class="btn btn-primary " onclick="window.location.href = 'juego_pendiente.jsp'">Más detalles</button>
                            </div>
                        </div>
                        <%}%>
                    </div>
                    <% }%>

                    <!--
                    <div class="col-lg-3 col-md-6">
                      <div class="item">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/trending-02.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <span class="category">Action</span>
                          <h5 class="card-title">The last of us 2</h5>
                          <p class="card-text"><em>Pendiente</em></p>
                          <button role="button" class="btn btn-primary" onclick="window.location.href = 'juego_pendiente.html'">Más detalles</button>
                        </div>
                      </div>
                    </div>


                    <div class="col-lg-3 col-md-6">
                      <div class="item">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/trending-03.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <span class="category">Action</span>
                          <h5 class="card-title">The last of us 2</h5>
                          <p class="card-text"><em>Pendiente</em></p>
                          <button role="button" class="btn btn-primary" onclick="window.location.href = 'juego_pendiente.html'">Más detalles</button>
                        </div>
                      </div>
                    </div>


                    <div class="col-lg-3 col-md-6">
                      <div class="item" style="background: #ffb207">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/trending-04.jpg" alt=""></a>
                        </div>
                        <div class="down-content" style="background: #ffb207">
                          <span class="category">Action</span>
                          <h5 class="card-title">The last of us 2</h5>
                          <p class="card-text"><em>No aceptado</em></p>
                          <button role="button" class="btn btn-primary" onclick="window.location.href = 'juego_no_aceptado.html'">Editar detalles</button>
                        </div>
                      </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                      <div class="item"  style="background: #ffb207">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/trending-01.jpg" alt=""></a>
                        </div>
                        <div class="down-content" style="background: #ffb207">
                          <span class="category">Action</span>
                          <h5 class="card-title">The last of us 2</h5>
                          <p class="card-text"><em>No aceptado</em></p>
                          <button role="button" class="btn btn-primary" onclick="window.location.href = 'juego_no_aceptado.html'">Editar detalles</button>
                        </div>
                      </div>
                    </div>


                    <div class="col-lg-3 col-md-6">
                      <div class="item" style="background: #ffb207">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/trending-02.jpg" alt=""></a>
                        </div>
                        <div class="down-content" style="background: #ffb207">
                          <span class="category">Action</span>
                          <h5 class="card-title">The last of us 2</h5>
                          <p class="card-text"><em>No aceptado</em></p>
                          <button role="button" class="btn btn-primary" onclick="window.location.href = 'juego_no_aceptado.html'">Editar detalles</button>
                        </div>
                      </div>
                    </div>


                    <div class="col-lg-3 col-md-6">
                      <div class="item" style="background: darkgray">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/trending-03.jpg" alt=""></a>
                        </div>
                        <div class="down-content" style="background: darkgray">
                          <span class="category">Action</span>
                          <h5 class="card-title">The last of us 2</h5>
                          <p class="card-text"><em>Retirado</em></p>
                          <button role="button" class="btn btn-primary" onclick="window.location.href = 'juego_retirado.html'">Más detalles</button>
                        </div>
                      </div>
                    </div>


                    <div class="col-lg-3 col-md-6">
                      <div class="item" style="background: #ff424b">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/trending-04.jpg" alt=""></a>
                        </div>
                        <div class="down-content" style="background: #ff424b">
                          <span class="category">Action</span>
                          <h5 class="card-title">The last of us 2</h5>
                          <p class="card-text"><em>Rechazado</em></p>
                          <button role="button" class="btn btn-primary" onclick="window.location.href = 'juego_rechazado.html'">Más detalles</button>
                        </div>
                      </div>
                    </div>
                    -->
                </div>
            </div>
        </div>

        <div class="section most-played">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section-heading">
                            <h6>TOP GAMES</h6>
                            <h2>Más jugados</h2>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="main-button">
                            <a href="<%=request.getContextPath()%>/Usuario/tendencia_juegos_page.jsp">Ver todos</a>
                        </div>
                    </div>

                    <% for (Juegos j : listaMasJugados) { %>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="item">
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/top-game-01.jpg" alt=""></a>
                            </div>
                            <div class="down-content">
                                <span class="category"><%=j.getGenero()%></span>
                                <h4><%=j.getNombre()%></h4>
                                <a href="#">Explore</a>
                            </div>
                        </div>
                    </div>
                    <%}%>
                    <!--
                    <div class="col-lg-2 col-md-6 col-sm-6">
                      <div class="item">
                        <div class="thumb">
                          <a href="#"><img src="assets/images/top-game-02.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <span class="category">Adventure</span>
                          <h4>Assasin Creed</h4>
                          <a href="#">Explore</a>
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
                          <a href="#">Explore</a>
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
                          <a href="#">Explore</a>
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
                          <a href="#">Explore</a>
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
                          <a href="#">Explore</a>
                        </div>
                      </div>
                    </div>
                    -->
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
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/categories-01.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg col-sm-6 col-xs-12">
                        <div class="item">
                            <h4>Action</h4>
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/categories-05.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg col-sm-6 col-xs-12">
                        <div class="item">
                            <h4>Action</h4>
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/categories-03.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg col-sm-6 col-xs-12">
                        <div class="item">
                            <h4>Action</h4>
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/categories-04.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg col-sm-6 col-xs-12">
                        <div class="item">
                            <h4>Action</h4>
                            <div class="thumb">
                                <a href="#"><img src="<%=request.getContextPath()%>/Usuario/assets/images/categories-05.jpg" alt=""></a>
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
                                        <a href="<%=request.getContextPath()%>/Usuario/tendencia_juegos_page.jsp">Compra ahora</a>
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
        <script src="<%=request.getContextPath()%>/Usuario/vendor/jquery/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/Usuario/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/Usuario/assets/js/isotope.min.js"></script>
        <script src="<%=request.getContextPath()%>/Usuario/assets/js/owl-carousel.js"></script>
        <script src="<%=request.getContextPath()%>/Usuario/assets/js/counter.js"></script>
        <script src="<%=request.getContextPath()%>/Usuario/assets/js/custom.js"></script>

    </body>

</html>