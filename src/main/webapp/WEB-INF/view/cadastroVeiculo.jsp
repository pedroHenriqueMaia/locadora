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
        <h2 class="center">Cadastro de Veiculos</h2>
        <form method="post" action="/veiculo/cadastrado">
            <div class="form-group">
                <label>Modelo</label>
                <input type="text" name="modelo" class="form-control">
            </div>
            <div class="form-group">
                <label>Concessionária</label>
                <input type="text" name="fabricante" class="form-control">
            </div>
            <div class="form-group">
                <label>Cor</label>
                <input type="text" name="cor" class="form-control">
            </div>
            <div class="form-group">
                <label>Ano</label>
                <input type="text" name="ano" class="form-control">
            </div><br>

            <button type="submit" class="btn btn-primary">Enviar</button>
            <a href="../" class="btn btn-danger">Voltar</a>
        </form>
    </div>
</body>
</html>