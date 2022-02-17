package com.example.springboot.jpa.dao;

import com.example.springboot.jpa.IRepositorioCliente;
import com.example.springboot.model.Cliente;

import java.util.List;

public class DAOCliente {
    private IRepositorioCliente rc;

    public DAOCliente(IRepositorioCliente rc) { this.rc = rc; }

    public IRepositorioCliente getRc() {
        return rc;
    }

    public void setRc(IRepositorioCliente rc) {
        this.rc = rc;
    }

    public void create(Cliente c) {
        this. rc.save(c);
    }
    public List<Cliente> findAll() {
        return (List<Cliente>) this.rc.findAll();
    }
}
