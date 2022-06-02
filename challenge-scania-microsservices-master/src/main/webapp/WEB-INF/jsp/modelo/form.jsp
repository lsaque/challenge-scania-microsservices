<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Modelo</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addModeloSuccess}">
            <h3>Modelo cadastrado com sucesso. Id: ${savedModelo.id} </h3>
        </c:if>

        <c:url var="save_modelo_url" value="/modelos/save"/>
        <form:form action="${save_modelo_url}" method="post" modelAttribute="modelo">

            <h2>Modelo</h2>

            <form:label path="id">Id ${id}</form:label> 
            <form:input placeholder="auto" type="text" path="id" readonly="true"/> 

            <form:label path="nome">Nome</form:label> 
            <form:input placeholder="Econômico" type="text" path="nome"/> 

            <form:label path="descricao">Descrição</form:label> 
            <form:input placeholder="Perfeito para longas viagens" type="text" path="descricao"/> 

            <form:label path="link">Link</form:label> 
            <form:input placeholder="https://google.com.br" type="text" path="link"/> 

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>