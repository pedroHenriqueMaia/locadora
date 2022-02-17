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
<div class="container" style="display: block;">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Modelo</th>
            <th scope="col">Concessionária</th>
            <th scope="col">Cor</th>
            <th scope="col">Ano</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${veiculos}" var="veiculo">
        <tr>
            <td scope="row">${veiculo.id}</td>
            <td>${veiculo.modelo}</td>
            <td>${veiculo.fabricante}</td>
            <td>${veiculo.ano}</td>
            <td>${veiculo.cor}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="../" class="btn btn-danger">Voltar</a>
</div>
</body>
</html>