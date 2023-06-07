package com.example.proyectoiweb1.usuario.controllers;

import com.example.proyectoiweb1.usuario.models.beans.Juegos;
import com.example.proyectoiweb1.usuario.models.daos.JuegosDaoUsuario;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletTendencias", value = "/ServletTendencias")
public class ServletTendencias extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        JuegosDaoUsuario juegosDaoUsuario = new JuegosDaoUsuario();
        String action = request.getParameter("a") == null ? "listar" : request.getParameter("a");
        switch (action){
            case "listar" :
                request.setAttribute("listarJuegos", juegosDaoUsuario.listarJuegos());
                request.setAttribute("listarMasJugados",juegosDaoUsuario.listarMasJugados());
                request.getRequestDispatcher("Usuario/tendencia_juegos_page.jsp").forward(request, response);
                break;
            case "mostrarDetalles" :
                String id = request.getParameter("id");
                request.setAttribute("juegos", juegosDaoUsuario.listar_juego_descripcion(id));
                request.getRequestDispatcher("Usuario/informacion_oferta_page.jsp").forward(request, response);
                break;
            case "vender" :
                request.getRequestDispatcher("Usuario/vender_juegos_page.jsp").forward(request, response);
                break;
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("p") == null ? "crear" : request.getParameter("p");

        JuegosDaoUsuario juegosDaoUsuario = new JuegosDaoUsuario();

        switch (action) {
            case "crear":
                Juegos juegos =  parseJuegos(request);
                juegosDaoUsuario.guardar(juegos);
                response.sendRedirect(request.getContextPath() + "/ServletTendencias");
                break;

            case "buscar":
                String textoBuscar = request.getParameter("textoBuscar");
                request.setAttribute("listarJuegos", juegosDaoUsuario.buscarPorJuego(textoBuscar));
                request.setAttribute("listarMasJugados",juegosDaoUsuario.listarMasJugados());
                request.getRequestDispatcher("Usuario/tendencia_juegos_page.jsp").forward(request, response);
                break;

        }

    }
    public Juegos parseJuegos(HttpServletRequest request) {

        Juegos juegos = new Juegos();
        String IdJuegosString = request.getParameter("idJuegos") != null ? request.getParameter("idJuegos") : "";
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String ratingstr =request.getParameter("rating");
        String genero = request.getParameter("genero");
        String consola = request.getParameter("consola");
        String precio_unidad_string = request.getParameter("precio_unidad");
        String cantidad_stock_string = request.getParameter("cantidad_stock");
        String estado_activo_string = request.getParameter("estado_activo");



        try {
            int idJuegos = Integer.parseInt(IdJuegosString);
            float precio_unidad = Float.parseFloat(precio_unidad_string);
            int cantidad_stock = Integer.parseInt(cantidad_stock_string);
            float rating = Float.parseFloat(ratingstr);
            Boolean estado_activo = Boolean.parseBoolean(estado_activo_string);

            juegos.setIdJuegos(idJuegos);
            juegos.setNombre(nombre);
            juegos.setDescripcion(descripcion);
            juegos.setRating(rating);
            juegos.setGenero(genero);
            juegos.setConsola(consola);
            juegos.setPrecio_unidad(precio_unidad);
            juegos.setCantidad_stock(cantidad_stock);
            juegos.setEstado_activo(estado_activo);

            return juegos;

        } catch (NumberFormatException e) {

        }
        return juegos;
    }
}
