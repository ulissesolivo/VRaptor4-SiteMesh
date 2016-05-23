<%-- 
    Document   : edita
    Created on : 19/05/2016, 21:30:40
    Author     : Ulisses Olivo
    E-mail     : ulissesolivo@gmail.com
--%>

<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><decorator:title default="App exemplo" /></title>
    <decorator:head />
  </head>

  <body>
    <table style="width: 100%;">
      <thead>
        <tr>
          <th><a href="<c:url value="/"/>">Início</a></th>
          <th><a href="<c:url value="/usuario/listar"/>">Usuários</a></th>
            <c:choose>
              <c:when test="${empty session.usuario}">
              <th><a href="<c:url value="/usuario/login"/>">Entrar</a></th>  
              </c:when>
              <c:otherwise>
              <th><a href="<c:url value="/usuario/editar/${session.usuario.id}"/>">${session.usuario.nome}</a></th>    
              <th><a href="<c:url value="/usuario/sair"/>">Sair</a></th>
              </c:otherwise>
            </c:choose>
        </tr>
      </thead>
    </table>
    <div>
      <decorator:body />
    </div>
    <!-- < jsp:include page="rodape.jsp" /> -->
  </footer>
</body>
</html>

