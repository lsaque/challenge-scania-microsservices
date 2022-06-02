<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Tipo</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addTipoSuccess}">
            <h3>Tipo cadastrado com sucesso. Id: ${savedTipo.id} </h3>
        </c:if>

        <c:url var="save_tipo_url" value="/tipos/save"/>
        <form:form action="${save_tipo_url}" method="post" modelAttribute="tipo">

            <h2>Tipo</h2>

            <form:label path="id">Id ${id}</form:label> 
            <form:input placeholder="auto" type="text" path="id" readonly="true"/>

            <form:label path="nome">Nome</form:label> 
            <form:input placeholder="Viagem" type="text" path="nome"/>

            <form:label path="descricao">Descrição</form:label> 
            <form:input placeholder="Onibus de Viagem" type="text" path="descricao"/>

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>