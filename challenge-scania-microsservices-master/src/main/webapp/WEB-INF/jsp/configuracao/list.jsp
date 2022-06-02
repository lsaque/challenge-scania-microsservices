<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <title>Lista de Configurações</title>
        <style><%@include file="../../css/table-style.css"%></style>
    </head>
    <body>
        <div>
            <h3>Lista de Configurações</h3>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Bagageiro</th>
                    <th>Ar Condicionado</th>
                    <th>Tipo</th>
                    <th>Banheiro</th>
                    <th>Modelo</th>
                    <th>Assento</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="configuracao" items="${configuracoes}">
                    <tr>
                        <td>${configuracao.id}</td>
                        <td>${configuracao.bagageiro}</td>
                        <td>${configuracao.arCondicionado}</td>
                        <td>${configuracao.tipo.id}</td>
                        <td>${configuracao.banheiro.id}</td>
                        <td>${configuracao.modelo.id}</td>
                        <td>${configuracao.assento.id}</td>
                        <td><a href="configuracoes/${configuracao.id}">Edit</a></td>
                        <td><a href="configuracoes/${configuracao.id}/delete">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="configuracoes/form">Adicionar configurações</a>
    </body>
</html>