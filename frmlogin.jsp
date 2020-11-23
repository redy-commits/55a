<%-- 
    Document   : frmlogin
    Created on : 11-20-2020, 11:07:40 PM
    Author     : Geovanni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <title>INICIO DE SESIÓN</title>
    </head>
    <body>
        <div class="container p-3 my-3 bg-light border" id="id_div_sesion">
            <div class="row">
                <div id="login" class="col-lg-4 offset-lg-4 col-md-6 offset-md-3
                    col-12">
                    <h1>AUTENTICACION DE USUARIOS</h1>
                    <c:if test="${not empty param.msg}">
                        <p style="color:red;">Error: ${param.msg}</p>
                    </c:if>
                    <form name="form_login" action="validar.jsp" method="post">
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input id="usuario" name="usuario"
                                class="form-control" type="input"
                                placeholder="Usuario">
                        </div>
                        <div class="form-group">
                            <label for="clave">Contraseña</label>
                            <input id="clave" name="clave"
                                class="form-control" type="password"
                                placeholder="Clave">
                        </div>
                        <button type="submit" value="Ingresar" class="btn btn-primary mb-2">
                            Entrar
                        </button>
                        <a href="index.jsp">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
