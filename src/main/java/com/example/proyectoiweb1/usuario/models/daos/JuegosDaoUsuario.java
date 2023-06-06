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

        String sql = "select * from juegos limit 12";
        String url = "jdbc:mysql://localhost:3306/mydb";

        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while (resultSet.next()) {
                Juegos juego = new Juegos();
                juego.setIdJuegos(resultSet.getInt(1));
                juego.setNombre(resultSet.getString(2));
                //juego.setDescripcion(resultSet.getString(3));
                juego.setRating(resultSet.getString(4));
                juego.setGenero(resultSet.getString(5));
                juego.setPrecio_unidad(resultSet.getString("precio_unidad"));
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
                    juego.setPrecio_unidad(rs.getString("precio_unidad"));
                    juego.setGenero(rs.getString("genero"));
                    juego.setCantidad_stock(rs.getString("cantidad_stock"));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return juego;
    }

}
