package com.example.springboot.controllers;

import com.example.springboot.jpa.IRepositorioCliente;
import com.example.springboot.jpa.IRepositorioVeiculo;
import com.example.springboot.jpa.dao.DAOCliente;
import com.example.springboot.jpa.dao.DAOVeiculo;
import com.example.springboot.model.Cliente;
import com.example.springboot.model.Veiculo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.context.ApplicationContext;

import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MeuControlador {

    @Autowired
    private ApplicationContext context;

    @RequestMapping("/")
    public String index() {
        return "home";
    }


    @RequestMapping("/home")
    @ResponseBody
    public String home(HttpSession session) {
        return "home";
    }

    @RequestMapping("/veiculo/cadastro")
    public String veiculoCadastrar() {
        return "cadastroVeiculo";
    }

    @RequestMapping("/veiculo/cadastrado")
    public String veiculoCadastrado(@RequestParam String modelo, @RequestParam String fabricante, @RequestParam String ano, @RequestParam String cor, HttpSession session) {
            ArrayList<String> veiculoCadastrado = new ArrayList<String>();
            veiculoCadastrado.add(modelo);
            veiculoCadastrado.add(fabricante);
            veiculoCadastrado.add(ano);
            veiculoCadastrado.add(cor);

            session.setAttribute("veiculoCadastrado", veiculoCadastrado);

            Veiculo veiculo = new Veiculo(modelo, fabricante, ano, cor);
            IRepositorioVeiculo repo = context.getBean(IRepositorioVeiculo.class);
            DAOVeiculo daoVeiculo = new DAOVeiculo(repo);
            daoVeiculo.create(veiculo);

            return "cadastradoVeiculo";
    }

    @RequestMapping("/veiculo/relatorio")
    public ModelAndView VeiculoRelatorio(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();

        IRepositorioVeiculo repo = context.getBean(IRepositorioVeiculo.class);
        DAOVeiculo daoVeiculo = new DAOVeiculo(repo);
        List<Veiculo> veiculos = daoVeiculo.findAll();
        modelAndView.addObject("veiculos", veiculos);
        modelAndView.setViewName("relatorioVeiculo");

        return modelAndView;
    }

    @RequestMapping("/cliente/cadastro")
    public String clienteCadastrar() {
        return "cadastroCliente";
    }

    @RequestMapping("/cliente/cadastrado")
    public String clienteCadastrado(@RequestParam String nome, @RequestParam String cpf, @RequestParam String telefone, HttpSession session) {
            ArrayList<String> clienteCadastrado = new ArrayList<String>();
            clienteCadastrado.add(nome);
            clienteCadastrado.add(cpf);
            clienteCadastrado.add(telefone);

            session.setAttribute("clienteCadastrado", clienteCadastrado);

            Cliente cliente = new Cliente(nome, cpf, telefone);
            IRepositorioCliente repo = context.getBean(IRepositorioCliente.class);
            DAOCliente daoCliente = new DAOCliente(repo);
            daoCliente.create(cliente);

            return "cadastradoCliente";
    }

    @RequestMapping("/alugar")
    public ModelAndView Alugar(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        IRepositorioCliente repoCliente = context.getBean(IRepositorioCliente.class);
        DAOCliente daoCliente = new DAOCliente(repoCliente);
        List<Cliente> clientes = daoCliente.findAll();
        modelAndView.addObject("clientes", clientes);
        IRepositorioVeiculo repoVeiculo = context.getBean(IRepositorioVeiculo.class);
        DAOVeiculo daoVeiculo = new DAOVeiculo(repoVeiculo);
        List<Veiculo> veiculos = daoVeiculo.findAll();
        modelAndView.addObject("veiculos", veiculos);
        modelAndView.setViewName("alugar");
        return modelAndView;
    }

    @RequestMapping("/alugado")
    public String Alugado(@RequestParam String veiculo, @RequestParam String cliente, HttpSession session) {
        ArrayList<String> alugado = new ArrayList<String>();
        alugado.add(veiculo);
        alugado.add(cliente);

        session.setAttribute("EventAlugado", alugado);

        //Aluguel aluguel = new Aluguel(veiculo, cliente);
        //IRepositorioAluguel repo = context.getBean(IRepositorioAluguel.class);
        //DAOAluguel daoAluguel = new DAOAluguel(repo);
        //daoAluguel.create(aluguel);

        return "alugado";
    }

    @RequestMapping("/cliente/relatorio")
    public ModelAndView ClienteRelatorio(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();

        IRepositorioCliente repo = context.getBean(IRepositorioCliente.class);
        DAOCliente daoCliente = new DAOCliente(repo);
        List<Cliente> cliente = daoCliente.findAll();
        modelAndView.addObject("clientes", cliente);
        modelAndView.setViewName("relatorioCliente");

        return modelAndView;
    }

}
