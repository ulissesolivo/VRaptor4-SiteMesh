<%-- 
    Document   : login
    Created on : 21/04/2016, 23:29:27
    Author     : Ulisses Olivo
    E-mail     : ulissesolivo@gmail.com
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Login de acesso - App exemplo</title>

<div style="max-width: 360px; margin: auto auto;">
  <form action="<c:url value="/usuario/logar" />" enctype="application/x-www-form-urlencoded" method="post">
    <h3 style="text-align: center;">Área restrita, informe seu e-mail e senha</h3>
    <c:if test="${not empty errors}">
      <ul class="error-messages">
        <c:forEach var="error" items="${errors}">
          <li class="${error.category}">${error.message}</li>
          </c:forEach>
      </ul>
    </c:if>
    <c:if test="${usuarios eq 0}">
      <p style="color: red;">O sistema não possui nenhum usuário cadastrado!</p>
      <p>Informe os dados do primeiro usuário!</p>
    </c:if>
    <table style="width: 100%;">
      <tbody>
        <c:if test="${usuarios eq 0}">
          <tr>
            <td>Nome</td>
            <td><input type="text" id="nome" name="usuario.nome" required="required" style="width: 300px;" /></td>
          </tr>
        </c:if>
        <tr>
          <td>E-mail</td>
          <td><input type="email" id="login" name="usuario.login" required="required" style="width: 300px;" /></td>
        </tr>
        <tr>
          <td>Senha</td>
          <td><input type="password" name="usuario.senha" required="required" /></td>
        </tr>
        <c:if test="${usuarios eq 0}">
          <tr>
            <td>Redigite a senha</td>
            <td><input type="password" name="usuario.senhaConfirmacao" required="required" /></td>
          </tr>  
        </c:if>
      </tbody>
      <tfoot>
        <tr>
          <td>&nbsp;</td>
          <td><button type="button" onclick="window.history.back();">Cancelar</button>
            <button type="submit" style="float: right;">Entrar</button></td>
        </tr>
      </tfoot>
    </table>
  </form>
</div>

<script>
  document.getElementById('nome').focus();
</script>
