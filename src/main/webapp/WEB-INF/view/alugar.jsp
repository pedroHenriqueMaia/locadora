<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Cadastro de Veiculos</title>
</head>
<body>
<div class="container" style="display: block;">
    <form method="post" action="/alugado">

        <div class="form-group">
            <label>Selecione o cliente</label>
            <select name="cliente" class="form-select" required>
                <option selected disabled></option>
                <c:forEach items="${clientes}" var="cliente">
                    <option value="${cliente.nome}">${cliente.nome}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label>Selecione o carro</label>
            <select name="veiculo" class="form-select" required>
                <option selected disabled></option>
                <c:forEach items="${veiculos}" var="veiculo">
                    <option value="${veiculo.id}">${veiculo.fabricante} ${veiculo.modelo} - ${veiculo.ano} (${veiculo.cor})</option>
                </c:forEach>
            </select>
        </div>
    <br>
        <button type="submit" class="btn btn-primary">Enviar</button>
        <a href="../" class="btn btn-danger">Voltar</a>
    </form>
</div>
</body>
</html>