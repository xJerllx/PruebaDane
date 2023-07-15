package com.prueba.DaneApli.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Estadia {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String pais;
    private int nocheViviendaPropia;
    private int nocheHotel;
    private int nocheViviendaFamiliar;
    private int nocheViviendaAlquiler;
    private String otroTipoVivienda;

    // Constructor vacío (obligatorio para JPA)
    public Estadia() {
    }

    // Constructor con parámetros
    public Estadia(String pais, int nocheViviendaPropia, int nocheHotel, int nocheViviendaFamiliar, int nocheViviendaAlquiler, String otroTipoVivienda) {
        this.pais = pais;
        this.nocheViviendaPropia = nocheViviendaPropia;
        this.nocheHotel = nocheHotel;
        this.nocheViviendaFamiliar = nocheViviendaFamiliar;
        this.nocheViviendaAlquiler = nocheViviendaAlquiler;
        this.otroTipoVivienda = otroTipoVivienda;
    }

    // Métodos getters y setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getNocheViviendaPropia() {
        return nocheViviendaPropia;
    }

    public void setNocheViviendaPropia(int nocheViviendaPropia) {
        this.nocheViviendaPropia = nocheViviendaPropia;
    }

    public int getNocheHotel() {
        return nocheHotel;
    }

    public void setNocheHotel(int nocheHotel) {
        this.nocheHotel = nocheHotel;
    }

    public int getNocheViviendaFamiliar() {
        return nocheViviendaFamiliar;
    }

    public void setNocheViviendaFamiliar(int nocheViviendaFamiliar) {
        this.nocheViviendaFamiliar = nocheViviendaFamiliar;
    }

    public int getNocheViviendaAlquiler() {
        return nocheViviendaAlquiler;
    }

    public void setNocheViviendaAlquiler(int nocheViviendaAlquiler) {
        this.nocheViviendaAlquiler = nocheViviendaAlquiler;
    }

    public String getOtroTipoVivienda() {
        return otroTipoVivienda;
    }

    public void setOtroTipoVivienda(String otroTipoVivienda) {
        this.otroTipoVivienda = otroTipoVivienda;
    }
}

