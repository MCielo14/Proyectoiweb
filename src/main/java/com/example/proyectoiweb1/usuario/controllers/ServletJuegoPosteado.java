package com.example.proyectoiweb1.usuario.controllers;

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
        request.setAttribute("listaJuegosPosteados", juegoPosteadoDao.listarJuegosPosteados());
        request.setAttribute("listaMasJugados", juegosDao.listarMasJugados());
        request.getRequestDispatcher("Usuario/mis_ventas_page.jsp").forward(request, response);
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

        }
    }
}
