<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Assento</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addAssentoSuccess}">
            <h3>Assento cadastrado com sucesso. Id: ${savedAssento.id} </h3>
        </c:if>

        <c:url var="save_assento_url" value="/assentos/save"/>
        <form:form class="form" action="${save_assento_url}" method="post" modelAttribute="assento">

            <h2>Assento</h2>

            <form:label path="id">Id ${id}</form:label> 
            <form:input placeholder="auto" type="text" path="id" readonly="true"/>

            <form:label path="qtd">Quantidade</form:label> 
            <form:input placeholder="10" type="text" path="qtd"/> 

            <form:label path="modelo">Id Modelo</form:label> 
            <form:input placeholder="1" type="text" path="modelo"/> 

            <form:label path="material">Id Material</form:label>
            <form:input placeholder="1" type="text" path="material"/>

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>