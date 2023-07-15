package com.prueba.DaneApli.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.prueba.DaneApli.entity.Estadia;
import com.prueba.DaneApli.interfaces.EstadiaRepository;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping(path="/Estadia")
public class EstadiaController {

	
	@Autowired
	private EstadiaRepository repo;
	
	@PostMapping("/add")
	public Estadia add(@RequestBody Estadia val) {
		return repo.save(val);
	}
	
	@GetMapping("/views")
	public List<Estadia> views(){
		return repo.findAll();
	}
	
	@GetMapping("/views/{val}")
	public Optional<Estadia> views(@PathVariable Integer val){
		return repo.findById(val);
	}
	
	@PutMapping("/update")
	public Estadia views(@RequestBody Estadia val){
		return repo.save(val);
	}
	
	@DeleteMapping("/delete/{val}")
	public String delete(@PathVariable Integer val){
	   repo.deleteById(val);
	   return "Id : " +val+ " delete";
	}
}


