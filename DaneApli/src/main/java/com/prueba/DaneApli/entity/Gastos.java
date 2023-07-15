package com.prueba.DaneApli.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Gastos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nombrePunto;
    private String huboGastos;
    private int valorPagadoUsted;
    private String moneda;
    private int valorTercerosNoHacen;
    private String monedaNoTerceros;
    private int valorTercerosSiHacen;
    private String monedaSiTerceros;
    @Column(name = "cuantasPersonas")
    private int cuantasPersonas;

    // Constructor vacío (obligatorio para JPA)
    public Gastos() {
    }

    // Constructor con parámetros
    public Gastos(String nombrePunto, String huboGastos, int valorPagadoUsted, String moneda, int valorTercerosNoHacen, String monedaNoTerceros,
            int valorTercerosSiHacen, String monedaSiTerceros, int cuantasPersonas) {
        this.nombrePunto = nombrePunto;
        this.huboGastos = huboGastos;
        this.valorPagadoUsted = valorPagadoUsted;
        this.moneda = moneda;
        this.valorTercerosNoHacen = valorTercerosNoHacen;
        this.monedaNoTerceros = monedaNoTerceros;
        this.valorTercerosSiHacen = valorTercerosSiHacen;
        this.monedaSiTerceros = monedaSiTerceros;
        this.cuantasPersonas = cuantasPersonas;
    }

    // Métodos getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombrePunto() {
        return nombrePunto;
    }

    public void setNombrePunto(String nombrePunto) {
        this.nombrePunto = nombrePunto;
    }

    public String isHuboGastos() {
        return huboGastos;
    }

    public void setHuboGastos(String huboGastos) {
        this.huboGastos = huboGastos;
    }

    public int getValorPagadoUsted() {
        return valorPagadoUsted;
    }

    public void setValorPagadoUsted(int valorPagadoUsted) {
        this.valorPagadoUsted = valorPagadoUsted;
    }

    public String getMoneda() {
        return moneda;
    }

    public void setMoneda(String moneda) {
        this.moneda = moneda;
    }

    public int getValorTercerosNoHacen() {
        return valorTercerosNoHacen;
    }

    public void setValorTercerosNoHacen(int valorTercerosNoHacen) {
        this.valorTercerosNoHacen = valorTercerosNoHacen;
    }

    public String getMonedaNoTerceros() {
        return monedaNoTerceros;
    }

    public void setMonedaNoTerceros(String monedaNoTerceros) {
        this.monedaNoTerceros = monedaNoTerceros;
    }

    public int getValorTercerosSiHacen() {
        return valorTercerosSiHacen;
    }

    public void setValorTercerosSiHacen(int valorTercerosSiHacen) {
        this.valorTercerosSiHacen = valorTercerosSiHacen;
    }

    public String getMonedaSiTerceros() {
        return monedaSiTerceros;
    }

    public void setMonedaSiTerceros(String monedaSiTerceros) {
        this.monedaSiTerceros = monedaSiTerceros;
    }

    public int getCuantasPersonas() {
        return cuantasPersonas;
    }

    public void setCuantasPersonas(int cuantasPersonas) {
        this.cuantasPersonas = cuantasPersonas;
    }
}