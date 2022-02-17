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
        <div class="alert alert-success" role="alert">
            Cadastrado com sucesso!
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Modelo</th>
                    <th scope="col">Concessionária</th>
                    <th scope="col">Cor</th>
                    <th scope="col">Ano</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row"><c:out value="${sessionScope.veiculoCadastrado.get(0)}" /></th>
                    <td><c:out value="${sessionScope.veiculoCadastrado.get(1)}" /></td>
                    <td><c:out value="${sessionScope.veiculoCadastrado.get(2)}" /></td>
                    <td><c:out value="${sessionScope.veiculoCadastrado.get(3)}" /></td>
                </tr>
            </tbody>
        </table>
        <a href="../" class="btn btn-danger">Voltar</a>
    </div>
</body>
</html>