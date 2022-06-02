<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Banheiros</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Banheiros</h3>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Configurações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="banheiro" items="${banheiros}">
                    <tr>
                        <td>${banheiro.id}</td>
                        <td>${banheiro.nome}</td>
                        <td>${banheiro.descricao}</td>
                        <c:forEach var="configuracao" items="${banheiro.configuracoes}">
                            <td>${configuracao.id}</td>
                        </c:forEach>
                        <td><a href="banheiros/${banheiro.id}">Edit</a></td>
                        <td><a href="banheiros/${banheiro.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="banheiros/form">Adicionar Banheiro</a>
    </body>
</html>