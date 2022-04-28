<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1" %>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>
<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800">Despesas</h1>
    <p class="mb-4">Planilha de Registros</p>
    
    <a class="btn btn-success mb-4" href="${pageContext.request.contextPath}/DespesaNovo">
        <i class="fas fa-sticky-note"></i>
        <strong>Novo</strong>
    </a>
        
        <div class="card shadow">
            <table id="datatable" class="display">
                <thead>
                    <tr>
                        <th align="right">ID</th>
                        <th align="left">Descrição</th>
                        <th align="center">Data</th>
                        <th align="right">ValorDespesa</th>
                        <th align="right">ValorPago</th>
                        <th Align="center">Excluir</th>
                        <th Align="center">Alterar</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="despesa" items="${despesas}">
                        <tr>
                            <td align="right">${despesa.idDespesa}</td>
                            <td align="left">${despesa.idDespesa}</td>
                            <td alingn="center"><fmt:formatDate pattern = "dd/MM/yyyy" value = "${despesa.dataDcocumento}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    
</div>
