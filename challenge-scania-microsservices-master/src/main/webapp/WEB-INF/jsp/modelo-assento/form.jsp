<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Modelo de Assento</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addModeloAssentoSuccess}">
            <h3>Modelo do Assento cadastrado com sucesso. Id: ${savedModeloAssento.id} </h3>
        </c:if>

        <c:url var="save_modelo_assento_url" value="/assentos/modelos/save"/>
        <form:form action="${save_modelo_assento_url}" method="post" modelAttribute="modeloAssento">

            <h2>Modelo</h2>

            <form:label path="id">Id ${id}</form:label>
            <form:input placeholder="auto" type="text" path="id" readonly="true"/>

            <form:label path="nome">Nome</form:label>
            <form:input placeholder="Confortable VIP" type="text" path="nome"/>

            <form:label path="descricao">Descrição</form:label>
            <form:input placeholder="Assento mais confortável" type="text" path="descricao"/>

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>