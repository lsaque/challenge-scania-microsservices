<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Tipos</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Tipos</h3>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="tipo" items="${tipos}">
                    <tr>
                        <td>${tipo.id}</td>
                        <td>${tipo.nome}</td>
                        <td>${tipo.descricao}</td>
                        <td><a href="tipos/${tipo.id}">Edit</a></td>
                        <td><a href="tipos/${tipo.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="tipos/form">Adicionar tipo</a>
    </body>
</html>