<%-- 
    Document   : header
    Created on : 11-21-2020, 02:35:59 PM
    Author     : Geovanni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">SISTEMA DE REGISTRO DE PERSONAS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <c:if test="${not empty sessionScope.usuario}">
            <c:if test="${sessionScope.usuario != 'Anonimo'}">
                <b style="color:red;">${sessionScope.nombre}</b><br>
                <b style="color:blue;font-size:5mm;">
                    Usuario: ${sessionScope.usuario}</b><br>
                <a href="logout.jsp">Salir de sesión</a>
            </c:if>
        </c:if>
        <c:if test="${empty sessionScope.usuario or sessionScope.usuario eq 'Anonimo'}">
              <b style="color:brown;font-size:5mm;">
                  <a href="frmlogin.jsp">Iniciar sesión</a>
              </b>
        </c:if>
      </li>
    </ul>
  </div>
</nav>           
