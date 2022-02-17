package com.example.springboot.jpa;

import com.example.springboot.model.Cliente;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IRepositorioCliente extends CrudRepository<Cliente, Long> {
    public List<Cliente> findClienteByCpf(String cpf);

}
