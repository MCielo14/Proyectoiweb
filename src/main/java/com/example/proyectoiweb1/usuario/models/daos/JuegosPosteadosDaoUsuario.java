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

    public void borrar(int idJuegoPosteado) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/mydb";
        String sql = "DELETE FROM juego_posteado_usuario WHERE id_publicacion_usuario = ?";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setInt(1, idJuegoPosteado);

            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public JuegoPosteadoUsuario listar_juegos(int id_editar) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from juego_posteado_usuario where id_publicacion_usuario = ?";
        String url = "jdbc:mysql://localhost:3306/mydb";
        JuegoPosteadoUsuario juegoPosteadoUsuario = null;
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setInt(1, id_editar);

            try (ResultSet rs = preparedStatement.executeQuery()) {
                if (rs.next()) {
                    juegoPosteadoUsuario = new JuegoPosteadoUsuario();
                    juegoPosteadoUsuario.setNombre_juego_nuevo(rs.getString("nombre_juego_nuevo "));
                    juegoPosteadoUsuario.setDescripcion_juego_nuevo(rs.getString("descripcion_juego_nuevo"));
                    juegoPosteadoUsuario.setPrecio_venta_usuario(rs.getInt("precio_venta_usuario"));
                    juegoPosteadoUsuario.setConsola_juego_nuevo(rs.getString("consola_juego_nuevo"));
                    juegoPosteadoUsuario.setGenero_juego_nuevo(rs.getString("genero_juego_nuevo"));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return juegoPosteadoUsuario;
    }
    public void actualizar(JuegoPosteadoUsuario juegoPosteado) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/mydb";
        String sql = "UPDATE juego_posteado_usuario SET nombre_juego_nuevo = ?, descripcion_juego_nuevo = ?,genero_juego_nuevo = ?, consola_juego_nuevo = ?, precio_venta_usuario = ? WHERE id_publicacion_usuario = ?";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1, juegoPosteado.getNombre_juego_nuevo());
            pstmt.setString(2, juegoPosteado.getDescripcion_juego_nuevo());
            pstmt.setString(3, juegoPosteado.getGenero_juego_nuevo());
            pstmt.setString(4, juegoPosteado.getConsola_juego_nuevo());
            pstmt.setFloat(5, juegoPosteado.getPrecio_venta_usuario());

            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
