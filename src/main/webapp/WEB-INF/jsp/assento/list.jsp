<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Assentos</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Assentos</h3>
        </div>
        <table>
            <thead>
                <tr>
                    <th class="texto">Id</th>
                    <th>Quantidade</th>
                    <th>Id Modelo</th>
                    <th>Id Material</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="assento" items="${assentos}">
                    <tr>
                        <td>${assento.id}</td>
                        <td>${assento.qtd}</td>
                        <td>${assento.modelo.id}</td>
                        <td>${assento.material.id}</td>
                        <td><a href="assentos/${assento.id}">Edit</a></td>
                        <td><a href="assentos/${assento.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="assentos/form">Adicionar assento</a>
    </body>
</html>