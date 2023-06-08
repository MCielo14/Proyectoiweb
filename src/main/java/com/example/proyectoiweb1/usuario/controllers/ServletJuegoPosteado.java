package com.example.proyectoiweb1.usuario.controllers;

import com.example.proyectoiweb1.usuario.models.beans.JuegoPosteadoUsuario;
import com.example.proyectoiweb1.usuario.models.daos.JuegosDaoUsuario;
import com.example.proyectoiweb1.usuario.models.daos.JuegosPosteadosDaoUsuario;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletJuegoPosteado", value = "/ServletJuegoPosteado")
public class ServletJuegoPosteado extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");


        JuegosPosteadosDaoUsuario juegoPosteadoDao = new JuegosPosteadosDaoUsuario();
        JuegosDaoUsuario juegosDao = new JuegosDaoUsuario();
        String action = request.getParameter("a") == null ? "listar" : request.getParameter("a");
        switch (action) {
            case "listar":
                request.setAttribute("listaJuegosPosteados", juegoPosteadoDao.listarJuegosPosteados());
                request.setAttribute("listaMasJugados", juegosDao.listarMasJugados());
                request.getRequestDispatcher("Usuario/mis_ventas_page.jsp").forward(request, response);
                break;

            case "borrar":
                int id = Integer.parseInt(request.getParameter("id"));
                juegoPosteadoDao.borrar(id);
                response.sendRedirect(request.getContextPath() + "/ServletJuegoPosteado");

                break;
            case "editarjuego" :
                int id_editar = Integer.parseInt(request.getParameter("id_editar"));
                request.setAttribute("jueguito", juegoPosteadoDao.listar_juegos(id_editar));
                request.getRequestDispatcher("Usuario/juego_no_aceptado.jsp").forward(request, response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String action = request.getParameter("p") == null ? "buscar" : request.getParameter("p");

        JuegosPosteadosDaoUsuario juegoPosteadoDao = new JuegosPosteadosDaoUsuario();
        JuegosDaoUsuario juegosDao = new JuegosDaoUsuario();

        switch (action) {

            case "buscar":
                String textoBuscar = request.getParameter("textoBuscar");
                request.setAttribute("listaJuegosPosteados", juegoPosteadoDao.buscarPorJuegoPosteado(textoBuscar));
                request.setAttribute("listaMasJugados",juegosDao.listarMasJugados());
                request.getRequestDispatcher("Usuario/mis_ventas_page.jsp").forward(request, response);
                break;

            case "actualizar":
                JuegoPosteadoUsuario juegoPosteado = parseJuegoPosteado(request);
                juegoPosteadoDao.actualizar(juegoPosteado);
                response.sendRedirect(request.getContextPath() + "/ServletJuegoPosteado");
                break;
        }
    }

    public JuegoPosteadoUsuario parseJuegoPosteado(HttpServletRequest request) {

        JuegoPosteadoUsuario juegoPosteado = new JuegoPosteadoUsuario();
        String id_publicacion_usuarioStr = request.getParameter("id_publicacion_usuario") != null ? request.getParameter("id_publicacion_usuario") : "";
        String nombre_juego_nuevo = request.getParameter("nombre_juego_nuevo");
        String descripcion_juego_nuevo = request.getParameter("descripcion_juego_nuevo");
        String genero_juego_nuevo = request.getParameter("genero_juego_nuevo");
        String consola_juego_nuevo = request.getParameter("consola_juego_nuevo");
        String precio_venta_usuarioStr = request.getParameter("precio_venta_usuario");

        try {
            int id_publicacion_usuario = Integer.parseInt(id_publicacion_usuarioStr);
            float precio_venta_usuario = Float.parseFloat(precio_venta_usuarioStr);


            juegoPosteado.setId_publicacion_usuario(id_publicacion_usuario);
            juegoPosteado.setNombre_juego_nuevo(nombre_juego_nuevo);
            juegoPosteado.setDescripcion_juego_nuevo(descripcion_juego_nuevo);
            juegoPosteado.setGenero_juego_nuevo(genero_juego_nuevo);
            juegoPosteado.setConsola_juego_nuevo(consola_juego_nuevo);
            juegoPosteado.setPrecio_venta_usuario(precio_venta_usuario);
            return juegoPosteado;

        } catch (NumberFormatException e) {

        }
        return juegoPosteado;
    }
}
