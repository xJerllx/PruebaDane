package com.prueba.DaneApli.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MotivoViaje {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String motivo;
    private String organizacionViaje;
    private String paquete;

    // Constructor vacío (obligatorio para JPA)
    public MotivoViaje() {
    }

    // Constructor con parámetros
    public MotivoViaje(int id, String motivo, String organizacionViaje, String paquete) {
        this.id = id;
        this.motivo = motivo;
        this.organizacionViaje = organizacionViaje;
        this.paquete = paquete;
    }

    // Métodos getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public String getOrganizacionViaje() {
        return organizacionViaje;
    }

    public void setOrganizacionViaje(String organizacionViaje) {
        this.organizacionViaje = organizacionViaje;
    }

    public String getPaquete() {
        return paquete;
    }

    public void setPaquete(String paquete) {
        this.paquete = paquete;
    }
}

