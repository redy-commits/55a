<%-- 
    Document   : logout
    Created on : 11-21-2020, 11:13:19 AM
    Author     : Geovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CERRANDO LA SESIÓN</title>
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">
    </head>
    <body>
        <h1>ACABA DE CERRAR SESIÓN!.</h1>
            <c:set var="usuario" value="" scope="session" />
            <c:set var="nombre" value="" scope="session" />
            <c:set var="nivel" value="-1" scope="session" />
            <p style="color:red;">
                <br>Dentro de unos segundos sera redirigido a la pagina de inicio</p>
            <script>
                    setTimeout(function () {
                        location.href = "index.jsp";
                    }, 5000);
            </script>
    </body>
</html>
