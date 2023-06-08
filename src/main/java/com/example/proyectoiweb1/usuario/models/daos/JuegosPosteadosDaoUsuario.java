package com.example.proyectoiweb1.usuario.models.daos;

import com.example.proyectoiweb1.usuario.models.beans.JuegoPosteadoUsuario;
import com.example.proyectoiweb1.usuario.models.beans.Juegos;

import java.sql.*;
import java.util.ArrayList;

public class JuegosPosteadosDaoUsuario {
    public ArrayList<JuegoPosteadoUsuario> listarJuegosPosteados() {
        ArrayList<JuegoPosteadoUsuario> listaJuegosPosteados = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "SELECT * FROM mydb.juego_posteado_usuario\n" +
                "where id_usuario_vendedor=2\n" +
                "order by estado_solicitud;";
        String url = "jdbc:mysql://localhost:3306/mydb";

        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while (resultSet.next()) {
                JuegoPosteadoUsuario juegoPosteado = new JuegoPosteadoUsuario();
                juegoPosteado.setId_publicacion_usuario(resultSet.getInt(1));
                juegoPosteado.setNombre_juego_nuevo(resultSet.getString(5));
                //juego.setDescripcion(resultSet.getString(3));
                juegoPosteado.setGenero_juego_nuevo(resultSet.getString(7));
                juegoPosteado.setEstado_solicitud(resultSet.getInt(14));
                listaJuegosPosteados.add(juegoPosteado);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return listaJuegosPosteados;
    }

    public static ArrayList<JuegoPosteadoUsuario> buscarPorJuegoPosteado(String name) {
        ArrayList<JuegoPosteadoUsuario> listabusqueda = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "SELECT * FROM mydb.juego_posteado_usuario where id_usuario_vendedor=2 and nombre_juego_nuevo like ? \n" +
                "order by estado_solicitud;";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1,  name + "%");

            try (ResultSet rs = preparedStatement.executeQuery()) {
                while (rs.next()) {
                    JuegoPosteadoUsuario juegoPosteado = new JuegoPosteadoUsuario();
                    juegoPosteado.setId_publicacion_usuario(rs.getInt(1));
                    juegoPosteado.setNombre_juego_nuevo(rs.getString(5));
                    juegoPosteado.setGenero_juego_nuevo(rs.getString(7));
                    juegoPosteado.setEstado_solicitud(rs.getInt(14));

                    listabusqueda.add(juegoPosteado);
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listabusqueda;
    }
}
