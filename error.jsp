<%-- 
    Document   : error
    Created on : 11-20-2020, 11:37:46 PM
    Author     : Geovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <title>ERRORES ENCONTRADOS</title>
    </head>
    <body>
        <h1> <p><b>Se encontró un error!</b></p><br/>
            <c:choose>
                <c:when test="${param.tipo eq 'contexto'}">
                    Error, intento de ejecutar una jsp, la cual debe estar en un contexto dentro de otra jsp
                </c:when>
                <c:when test="${param.tipo eq 'parametro'}">
                    Error, intento de ejecutar una jsp, sin proporcionar los parametros necesarios
                </c:when>                
            </c:choose>
  
        </h1>
                  <script>
                setTimeout(function () {
                    location.href = "${param.destino}";
                }, 5000);
            </script>
    </body>
</html>
