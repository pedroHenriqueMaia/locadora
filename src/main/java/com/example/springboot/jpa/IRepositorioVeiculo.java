package com.example.springboot.jpa;

import org.springframework.data.repository.CrudRepository;
import com.example.springboot.model.Veiculo;

public interface IRepositorioVeiculo extends CrudRepository<Veiculo, Long> {
}
