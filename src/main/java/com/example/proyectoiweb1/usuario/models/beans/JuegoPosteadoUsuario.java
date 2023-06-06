package com.example.proyectoiweb1.usuario.models.beans;

public class JuegoPosteadoUsuario {
    private int id_publicacion_usuario;
    private int id_usuario_vendedor;
    private int id_administrador_asignado;
    private int id_juego_venta;
    private String nombre_juego_nuevo;
    private String descripcion_juego_nuevo;
    private String genero_juego_nuevo;
    private String imagen_juego_nuevo;
    private String consola_juego_nuevo;
    private float precio_venta_usuario;
    private float precio_compra_administrador;
    private boolean mostrar_posteo_usuario;
    private String motivo_rechazo;
    private int estado_solicitud;


    public int getId_publicacion_usuario() {
        return id_publicacion_usuario;
    }

    public void setId_publicacion_usuario(int id_publicacion_usuario) {
        this.id_publicacion_usuario = id_publicacion_usuario;
    }

    public int getId_usuario_vendedor() {
        return id_usuario_vendedor;
    }

    public void setId_usuario_vendedor(int id_usuario_vendedor) {
        this.id_usuario_vendedor = id_usuario_vendedor;
    }

    public int getId_administrador_asignado() {
        return id_administrador_asignado;
    }

    public void setId_administrador_asignado(int id_administrador_asignado) {
        this.id_administrador_asignado = id_administrador_asignado;
    }

    public int getId_juego_venta() {
        return id_juego_venta;
    }

    public void setId_juego_venta(int id_juego_venta) {
        this.id_juego_venta = id_juego_venta;
    }

    public String getNombre_juego_nuevo() {
        return nombre_juego_nuevo;
    }

    public void setNombre_juego_nuevo(String nombre_juego_nuevo) {
        this.nombre_juego_nuevo = nombre_juego_nuevo;
    }

    public String getDescripcion_juego_nuevo() {
        return descripcion_juego_nuevo;
    }

    public void setDescripcion_juego_nuevo(String descripcion_juego_nuevo) {
        this.descripcion_juego_nuevo = descripcion_juego_nuevo;
    }

    public String getGenero_juego_nuevo() {
        return genero_juego_nuevo;
    }

    public void setGenero_juego_nuevo(String genero_juego_nuevo) {
        this.genero_juego_nuevo = genero_juego_nuevo;
    }

    public String getImagen_juego_nuevo() {
        return imagen_juego_nuevo;
    }

    public void setImagen_juego_nuevo(String imagen_juego_nuevo) {
        this.imagen_juego_nuevo = imagen_juego_nuevo;
    }

    public String getConsola_juego_nuevo() {
        return consola_juego_nuevo;
    }

    public void setConsola_juego_nuevo(String consola_juego_nuevo) {
        this.consola_juego_nuevo = consola_juego_nuevo;
    }

    public float getPrecio_venta_usuario() {
        return precio_venta_usuario;
    }

    public void setPrecio_venta_usuario(float precio_venta_usuario) {
        this.precio_venta_usuario = precio_venta_usuario;
    }

    public float getPrecio_compra_administrador() {
        return precio_compra_administrador;
    }

    public void setPrecio_compra_administrador(float precio_compra_administrador) {
        this.precio_compra_administrador = precio_compra_administrador;
    }

    public boolean isMostrar_posteo_usuario() {
        return mostrar_posteo_usuario;
    }

    public void setMostrar_posteo_usuario(boolean mostrar_posteo_usuario) {
        this.mostrar_posteo_usuario = mostrar_posteo_usuario;
    }

    public String getMotivo_rechazo() {
        return motivo_rechazo;
    }

    public void setMotivo_rechazo(String motivo_rechazo) {
        this.motivo_rechazo = motivo_rechazo;
    }

    public int getEstado_solicitud() {
        return estado_solicitud;
    }

    public void setEstado_solicitud(int estado_solicitud) {
        this.estado_solicitud = estado_solicitud;
    }
}
