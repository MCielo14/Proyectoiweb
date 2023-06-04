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
                juego.setRating(resultSet.getString(4));
                juego.setPrecio_unidad(resultSet.getString("precio_unidad"));
                listaJuegos.add(juego);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



        return  listaJuegos;

    }
}
