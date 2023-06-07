package com.example.proyectoiweb1.usuario.controllers;

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
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
