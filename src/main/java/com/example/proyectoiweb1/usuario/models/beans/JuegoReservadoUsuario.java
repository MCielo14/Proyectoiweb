package com.example.proyectoiweb1.usuario.models.beans;

import java.util.Date;

public class JuegoReservadoUsuario {
    private int idCompraDelUsuario;
    private int id_usuario;
    private Date fecha_de_compra;
    private Date fecha_de_entrega;
    private boolean tipo_entrega;
    private int tiempo_de_espera;
    private int id_detalle_direccion_entrega;
    private int id_carrito_compras;


    public int getIdCompraDelUsuario() {
        return idCompraDelUsuario;
    }

    public void setIdCompraDelUsuario(int idCompraDelUsuario) {
        this.idCompraDelUsuario = idCompraDelUsuario;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public Date getFecha_de_compra() {
        return fecha_de_compra;
    }

    public void setFecha_de_compra(Date fecha_de_compra) {
        this.fecha_de_compra = fecha_de_compra;
    }

    public Date getFecha_de_entrega() {
        return fecha_de_entrega;
    }

    public void setFecha_de_entrega(Date fecha_de_entrega) {
        this.fecha_de_entrega = fecha_de_entrega;
    }

    public boolean isTipo_entrega() {
        return tipo_entrega;
    }

    public void setTipo_entrega(boolean tipo_entrega) {
        this.tipo_entrega = tipo_entrega;
    }

    public int getTiempo_de_espera() {
        return tiempo_de_espera;
    }

    public void setTiempo_de_espera(int tiempo_de_espera) {
        this.tiempo_de_espera = tiempo_de_espera;
    }

    public int getId_detalle_direccion_entrega() {
        return id_detalle_direccion_entrega;
    }

    public void setId_detalle_direccion_entrega(int id_detalle_direccion_entrega) {
        this.id_detalle_direccion_entrega = id_detalle_direccion_entrega;
    }

    public int getId_carrito_compras() {
        return id_carrito_compras;
    }

    public void setId_carrito_compras(int id_carrito_compras) {
        this.id_carrito_compras = id_carrito_compras;
    }
}
