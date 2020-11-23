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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">  
    </head>
    <body>
            <c:set var="usuario" value="" scope="session" />
            <c:set var="nombre" value="" scope="session" />
            <c:set var="nivel" value="-1" scope="session" />
            <div class="container p-3 my-3 bg-light border" id="div_cerrando_sesion">
                <h1>ACABA DE CERRAR SESIÓN!</h1>
                <div class="alert alert-info" role="alert">
                    <h4 class="alert-heading">Cerrando Sesion</h4>
                    <p>Dentro de unos segundos sera redirigido a la pagina de inicio. Hasta luego.</p>
                </div>
            </div>
            <script>
                    setTimeout(function () {
                        location.href = "index.jsp";
                    }, 5000);
            </script>
    </body>
</html>
