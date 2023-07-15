package com.prueba.DaneApli.interfaces;

import org.springframework.data.jpa.repository.JpaRepository;
import com.prueba.DaneApli.entity.Gastos;

public interface GastosRepository extends JpaRepository<Gastos, Integer> {
    
}
