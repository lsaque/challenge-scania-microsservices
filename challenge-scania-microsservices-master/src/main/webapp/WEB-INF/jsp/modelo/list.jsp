<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Modelos</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Modelos</h3>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Link</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="modelo" items="${modelos}">
                    <tr>
                        <td>${modelo.id}</td>
                        <td>${modelo.nome}</td>
                        <td>${modelo.descricao}</td>
                        <td>${modelo.link}</td>
                        <td><a href="modelos/${modelo.id}">Edit</a></td>
                        <td><a href="modelos/${modelo.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="modelos/form">Adicionar modelo</a>
    </body>
</html>