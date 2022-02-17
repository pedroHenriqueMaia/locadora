package com.example.springboot.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Aluguel {

    @Id
    @GeneratedValue
    private Long id;
    private String cliente;
    private String veiculo;


    public Aluguel() { super(); }
    public Aluguel(String veiculo, String cliente) {
        this.setVeiculo(veiculo);
        this.setCliente(cliente);
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String setVeiculo() { return veiculo; }
    public void setVeiculo(String veiculo) { this.veiculo = veiculo; }

    public String getCliente() { return cliente; }
    public void setCliente(String cliente) { this.cliente = cliente; }
}
