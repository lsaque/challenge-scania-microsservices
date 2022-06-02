<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Orçamento</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addOrcamentoSuccess}">
            <h3>Orçamento cadastrado com sucesso. Id: ${savedOrcamento.id} </h3>
        </c:if>

        <c:url var="save_orcamento_url" value="/orcamentos/save"/>
        <form:form action="${save_orcamento_url}" method="post" modelAttribute="orcamento">

            <h2>Orçamento</h2>

            <form:label path="id">Id ${id}</form:label>
            <form:input placeholder="auto" type="text" path="id" readonly="true"/>

            <form:label path="nomeSolicitante">Nome Solicitante</form:label>
            <form:input placeholder="Laís" type="text" path="nomeSolicitante"/>

            <form:label path="sobrenomeSolicitante">Sobrenome Solicitante</form:label>
            <form:input placeholder="Santos Oliveira" type="text" path="sobrenomeSolicitante"/>

            <form:label path="numeroTelefone">Telefone</form:label>
            <form:input placeholder="11965786525" type="text" path="numeroTelefone"/>

            <form:label path="nomeEmpresa">Nome da Empresa</form:label>
            <form:input placeholder="Scania" type="text" path="nomeEmpresa"/>

            <form:label path="cep">CEP</form:label>
            <form:input placeholder="08876-090" type="text" path="cep"/>

            <form:label path="comentarios">Comentários</form:label>
            <form:input placeholder="Ônibus Confort Plus" type="text" path="comentarios"/>

            <form:label path="cargo">Id Cargo</form:label>
            <form:input placeholder="1" type="text" path="cargo"/>

            <form:label path="configuracao">Id Configuração</form:label>
            <form:input placeholder="2" type="text" path="configuracao"/>

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>