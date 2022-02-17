<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Locadora</title>
</head>
<body>

    <div class="container">
        <h2 align="center">Home</h2>
        <div align="center" class="card" style="width: 100%;">
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><a href="./veiculo/cadastro">Cadastrar Veiculo</a></li>
                <li class="list-group-item"><a href="./cliente/cadastro">Cadastrar Cliente</a></li>
                <li class="list-group-item"><a href="./veiculo/relatorio">Relatorio Veiculo</a></li>
                <li class="list-group-item"><a href="./cliente/relatorio">Relatorio Cliente</a></li>
                <li class="list-group-item"><a href="./alugar">Alugar Veiculo</a></li>
            </ul>
        </div>
    </div>
</body>
</html>