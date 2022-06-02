<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Materiais de Assentos</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Materiais de Assentos</h3>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="materialAssento" items="${materiaisAssentos}">
                    <tr>
                        <td>${materialAssento.id}</td>
                        <td>${materialAssento.nome}</td>
                        <td><a href="materiais/${materialAssento.id}">Edit</a></td>
                        <td><a href="materiais/${materialAssento.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
    <a href="materiais/form">Adicionar material</a>
</html>