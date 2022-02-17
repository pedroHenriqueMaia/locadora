package com.example.springboot.jpa.dao;

import java.util.List;

import com.example.springboot.model.Veiculo;
import com.example.springboot.jpa.IRepositorioVeiculo;

public class DAOVeiculo {
    private IRepositorioVeiculo rc;

    public DAOVeiculo(IRepositorioVeiculo rc) { this.rc = rc; }

    public IRepositorioVeiculo getRc() { return rc; }

    public void setRc(IRepositorioVeiculo rc) { this.rc = rc; }

    public void create(Veiculo c) { this.rc.save(c); }

    public List<Veiculo> findAll() {
        return (List<Veiculo>)this.rc.findAll();
    }
}
