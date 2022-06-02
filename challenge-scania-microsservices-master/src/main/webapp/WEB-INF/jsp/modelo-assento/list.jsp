<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Materiais de Assentos</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Modelos de Assentos</h3>
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
                <c:forEach var="modeloAssento" items="${modelosAssentos}">
                    <tr>
                        <td>${modeloAssento.id}</td>
                        <td>${modeloAssento.nome}</td>
                        <td>${modeloAssento.descricao}</td>
                        <td><a href="modelos/${modeloAssento.id}">Edit</a></td>
                        <td><a href="modelos/${modeloAssento.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="modelos/form">Adicionar modelo</a>
    </body>
</html>