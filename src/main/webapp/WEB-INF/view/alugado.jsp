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
        Parabens! O carro nº<c:out value="${sessionScope.EventAlugado.get(0)}"/> esta alugado para nosso cliente <c:out value="${sessionScope.EventAlugado.get(1)}" />
    </div>
    <a href="../" class="btn btn-danger">Voltar</a>
</div>
</body>
</html>