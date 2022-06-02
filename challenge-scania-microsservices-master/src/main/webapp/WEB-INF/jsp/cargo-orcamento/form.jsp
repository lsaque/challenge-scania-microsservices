<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <title>Adicionar Cargo do Orçamento</title>
        <style><%@include file="../../css/form-style.css"%></style>
    </head>
    <body>
        <c:if test="${addCargoOrcamentoSuccess}">
            <h3>Cargo do Orçamento cadastrado com sucesso. Id: ${savedCargoOrcamento.id} </h3>
        </c:if>

        <c:url var="save_cargo_orcamento_url" value="/orcamentos/cargos/save"/>
        <form:form action="${save_cargo_orcamento_url}" method="post" modelAttribute="cargoOrcamento">

            <h2>Cargo</h2>

            <form:label path="id">Id ${id}</form:label> 
            <form:input placeholder="auto" type="text" path="id" readonly="true"/> 

            <form:label path="nome">Nome</form:label> 
            <form:input placeholder="Exclusivo" type="text" path="nome"/>

            <form:label path="orcamentos">Id Orçamentos</form:label> 
            <form:input placeholder="1,2,3" type="text" path="orcamentos"/>

            <input class="submit-button" type="submit" name="salvar" value="SALVAR"/>
        </form:form>
    </body>
</html>