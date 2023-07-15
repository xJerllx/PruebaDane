package com.prueba.DaneApli.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Informacion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String residencia;
    private String nacionalidad;
    private String sexo;
    private int edad;
    private String acompanamiento;
    private int cantidadPersonas;

    // Constructor vacío (obligatorio para JPA)
    public Informacion() {
    }

    // Constructor con parámetros
    public Informacion(int id, String residencia, String nacionalidad, String sexo, int edad, String acompanamiento, int cantidadPersonas) {
        this.id = id;
        this.residencia = residencia;
        this.nacionalidad = nacionalidad;
        this.sexo = sexo;
        this.edad = edad;
        this.acompanamiento = acompanamiento;
        this.cantidadPersonas = cantidadPersonas;
    }

    // Métodos getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getResidencia() {
        return residencia;
    }

    public void setResidencia(String residencia) {
        this.residencia = residencia;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getAcompanamiento() {
        return acompanamiento;
    }

    public void setAcompanamiento(String acompanamiento) {
        this.acompanamiento = acompanamiento;
    }

    public int getCantidadPersonas() {
        return cantidadPersonas;
    }

    public void setCantidadPersonas(int cantidadPersonas) {
        this.cantidadPersonas = cantidadPersonas;
    }
}

