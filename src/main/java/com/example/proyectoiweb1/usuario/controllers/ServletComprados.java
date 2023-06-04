package com.example.proyectoiweb1.usuario.controllers;

import com.example.proyectoiweb1.usuario.models.daos.JuegosDaoUsuario;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletComprados", value = "/ServletComprados")
public class ServletComprados extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        JuegosDaoUsuario juegosDao = new JuegosDaoUsuario();
        request.setAttribute("listaJuegos", juegosDao.listarJuegos());
        request.getRequestDispatcher("Usuario/compras_juegos_page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
