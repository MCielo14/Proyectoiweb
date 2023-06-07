package com.example.proyectoiweb1.usuario.models.daos;

import com.example.proyectoiweb1.usuario.models.beans.Juegos;

import java.sql.*;
import java.util.ArrayList;

public class JuegosDaoUsuario {
    public ArrayList<Juegos> listarJuegos() {
        ArrayList<Juegos> listaJuegos = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from juegos";
        String url = "jdbc:mysql://localhost:3306/mydb";

        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while (resultSet.next()) {
                Juegos juego = new Juegos();
                juego.setIdJuegos(resultSet.getInt(1));
                juego.setNombre(resultSet.getString(2));
                //juego.setDescripcion(resultSet.getString(3));
                juego.setRating(resultSet.getFloat(4));
                juego.setGenero(resultSet.getString(5));
                juego.setPrecio_unidad(resultSet.getFloat("precio_unidad"));
                listaJuegos.add(juego);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return  listaJuegos;

    }
    public ArrayList<Juegos> listarMasJugados() {
        ArrayList<Juegos> listaMasJugados = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from juegos where rating>4.5 limit 6";
        String url = "jdbc:mysql://localhost:3306/mydb";

        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while (resultSet.next()) {
                Juegos juego = new Juegos();
                juego.setNombre(resultSet.getString(2));
                juego.setGenero(resultSet.getString(5));
                listaMasJugados.add(juego);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return  listaMasJugados;

    }
    public Juegos listar_juego_descripcion(String id) {
        Juegos juego = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from juegos where idJuegos = ?";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, id);

            try (ResultSet rs = preparedStatement.executeQuery()) {
                if (rs.next()) {
                    juego  = new Juegos();
                    juego.setDescripcion(rs.getString("descripcion"));
                    juego.setNombre(rs.getString("nombre"));
                    juego.setPrecio_unidad(rs.getFloat("precio_unidad"));
                    juego.setGenero(rs.getString("genero"));
                    juego.setCantidad_stock(rs.getInt("cantidad_stock"));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return juego;
    }
    public void guardar(Juegos juegos) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String url = "jdbc:mysql://localhost:3306/mydb";
        String sql = "INSERT INTO juegos (idJuegos,nombre,descripcion,rating,genero,imagen,consola,precio_unidad,cantidad_stock,estad_activo) VALUES (?,?,?,?,?)";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setInt(1, juegos.getIdJuegos());
            pstmt.setString(2, juegos.getNombre());
            pstmt.setString(3, juegos.getDescripcion());
            pstmt.setFloat(4,juegos.getRating());
            pstmt.setString(5, juegos.getGenero());
            pstmt.setString(6, juegos.getImagen());
            pstmt.setString(7, juegos.getConsola());
            pstmt.setFloat(8, juegos.getPrecio_unidad());
            pstmt.setInt(9,juegos.getCantidad_stock());
            pstmt.setBoolean(10,juegos.getEstado_activo());
            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public static ArrayList<Juegos> buscarPorJuego(String name) {
        ArrayList<Juegos> listabusqueda = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "SELECT * FROM mydb.juegos where nombre like ?";
        String url = "jdbc:mysql://localhost:3306/mydb";
        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1,  name + "%");

            try (ResultSet rs = preparedStatement.executeQuery()) {
                while (rs.next()) {
                    Juegos juego = new Juegos();
                    juego.setIdJuegos(rs.getInt(1));
                    juego.setNombre(rs.getString(2));
                    juego.setRating(rs.getFloat(4));
                    juego.setGenero(rs.getString(5));

                    listabusqueda.add(juego);
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listabusqueda;
    }

}
