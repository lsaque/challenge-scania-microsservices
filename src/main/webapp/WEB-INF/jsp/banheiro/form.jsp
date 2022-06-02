<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Banheiro</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addBanheiroSuccess}">
            <h3>Banheiro cadastrado com sucesso. Id: ${savedBanheiro.id} </h3>
        </c:if>

        <c:url var="save_banheiro_url" value="/banheiros/save"/>
        <form:form class="form" action="${save_banheiro_url}" method="post" modelAttribute="banheiro">

            <h2>Banheiro</h2>

            <form:label path="id">Id ${id}</form:label>
            <form:input placeholder="auto" type="text" path="id" readonly="true"/>

            <form:label path="nome">Nome</form:label>
            <form:input placeholder="Banheiro Luxo" type="text" path="nome"/>

            <form:label path="descricao">Descrição</form:label>
            <form:input placeholder="Equipamentos confortáveis e..." type="text" path="descricao"/>

            <form:label path="configuracoes">Id Configurações</form:label>
            <form:input placeholder="1,2,3,4" type="text" path="configuracoes"/>

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>