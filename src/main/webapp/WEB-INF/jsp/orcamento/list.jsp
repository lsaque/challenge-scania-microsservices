<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Orçamentos</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Orçamentos</h3>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome Solicitante</th>
                    <th>Sobrenome Solicitante</th>
                    <th>Telefone</th>
                    <th>Nome da Empresa</th>
                    <th>CEP</th>
                    <th>Comentários</th>
                    <th>Id Cargo</th>
                    <th>Id Configuração</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="orcamento" items="${orcamentos}">
                    <tr>
                        <td>${orcamento.id}</td>
                        <td>${orcamento.nomeSolicitante}</td>
                        <td>${orcamento.sobrenomeSolicitante}</td>
                        <td>${orcamento.numeroTelefone}</td>
                        <td>${orcamento.nomeEmpresa}</td>
                        <td>${orcamento.cep}</td>
                        <td>${orcamento.comentarios}</td>
                        <td>${orcamento.cargo.id}</td>
                        <td>${orcamento.configuracao.id}</td>
                        <td><a href="orcamentos/${orcamento.id}">Edit</a></td>
                        <td><a href="orcamentos/${orcamento.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="orcamentos/form">Adicionar orçamento</a>
    </body>
</html>