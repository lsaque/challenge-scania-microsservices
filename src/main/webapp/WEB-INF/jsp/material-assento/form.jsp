<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Material do Assentos</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addMaterialAssentoSuccess}">
            <h3>Material do Assento cadastrado com sucesso. Id: ${savedMaterialAssento.id} </h3>
        </c:if>

        <c:url var="save_material_assento_url" value="/assentos/materiais/save"/>
        <form:form action="${save_material_assento_url}" method="post" modelAttribute="materialAssento">

            <h2>Material</h2>

            <form:label path="id">Id ${id}</form:label> 
            <form:input placeholder="auto" type="text" path="id" readonly="true"/> 

            <form:label path="nome">Nome</form:label> 
            <form:input placeholder="Plástico" type="text" path="nome"/> 

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>