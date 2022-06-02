<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Configuração</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addConfiguracaoSuccess}">
            <h3>Configuração cadastrada com sucesso. Id: ${savedConfiguracao.id} </h3>
        </c:if>

        <c:url var="save_configuracao_url" value="/configuracoes/save"/>
        <form:form class="form" action="${save_configuracao_url}" method="post" modelAttribute="configuracao">
            
            <h2>Configuração</h2>

            <form:label path="id">Id ${id}</form:label>
            <form:input placeholder="auto" type="text" path="id" readonly="true"/>

            <form:label path="bagageiro">Possui bagageiro?</form:label>
            <form:checkbox path="bagageiro" value="true"/>

            <form:label path="arCondicionado">Possui ar condicionado?</form:label>
            <form:checkbox path="arCondicionado" value="true"/>

            <form:label path="tipo">Id Tipo</form:label>
            <form:input placeholder="1" type="text" path="tipo"/>

            <form:label path="modelo">Id Modelo</form:label>
            <form:input placeholder="3" type="text" path="modelo"/>

            <form:label path="assento">Id Assento</form:label>
            <form:input placeholder="2" type="text" path="assento"/>

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>