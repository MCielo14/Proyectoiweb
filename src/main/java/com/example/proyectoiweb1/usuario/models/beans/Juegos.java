package com.example.proyectoiweb1.usuario.models.beans;

public class Juegos {
    private int idJuegos;
    private String nombre;
    private String descripcion;
    private float rating;
    private String genero;
    private String imagen;
    private String consola;
    private float precio_unidad;
    private int cantidad_stock;
    private boolean estado_activo;

    public int getIdJuegos() {
        return idJuegos;
    }

    public void setIdJuegos(int idJuegos) {
        this.idJuegos = idJuegos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getConsola() {
        return consola;
    }

    public void setConsola(String consola) {
        this.consola = consola;
    }

    public float getPrecio_unidad() {
        return precio_unidad;
    }

    public void setPrecio_unidad(float precio_unidad) {
        this.precio_unidad = precio_unidad;
    }

    public int getCantidad_stock() {
        return cantidad_stock;
    }

    public void setCantidad_stock(int cantidad_stock) {
        this.cantidad_stock = cantidad_stock;
    }

    public boolean getEstado_activo() {
        return estado_activo;
    }

    public void setEstado_activo(boolean estado_activo) {
        this.estado_activo = estado_activo;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
