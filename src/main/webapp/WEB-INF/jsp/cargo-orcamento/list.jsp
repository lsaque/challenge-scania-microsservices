<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Cargos de Orçamento</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Cargos de Orçamento</h3>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Orçamentos</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cargoOrcamento" items="${cargosOrcamentos}">
                    <tr>
                        <td>${cargoOrcamento.id}</td>
                        <td>${cargoOrcamento.nome}</td>
                        <c:forEach var="orcamento" items="${cargoOrcamento.orcamentos}">
                            <td>${orcamento.id}</td>
                        </c:forEach>
                        <td><a href="cargos/${cargoOrcamento.id}">Edit</a></td>
                        <td><a href="cargos/${cargoOrcamento.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="cargos/form">Adicionar cargo</a>
    </body>
</html>