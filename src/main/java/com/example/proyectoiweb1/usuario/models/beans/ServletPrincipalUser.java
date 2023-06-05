package com.example.proyectoiweb1.usuario.models.beans;

import com.example.proyectoiweb1.usuario.models.daos.JuegosDaoUsuario;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletPrincipalUser", value = "/ServletPrincipalUser")
public class ServletPrincipalUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JuegosDaoUsuario juegosDaoUsuario = new JuegosDaoUsuario();
        String id = request.getParameter("id");
        request.setAttribute("juego", juegosDaoUsuario.listar_juego_descripcion(id));
        request.getRequestDispatcher("Usuario/principal_user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
