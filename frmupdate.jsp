<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="fuentedatos.jsp" %>

<c:set var="pageId" value="Index" />
<c:set var="standalone" value="not" />
<%@ include file="seguridad.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="CSS/toastify.css">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="JS/toastify.js"></script>
        <style type="text/css">.toast{opacity: 1 !important;}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar libro</title>
    </head>
    <body>
        <div class="container p-3 my-3 bg-light border" id="formulario">

            <h1 class="text-center header">ACTUALIZAR LIBRO</h1>
            <div class="form-group">
                <div class="row">
                    <input type="text" value="${param.id}" class="form-control" id="id" hidden>
                    <div class="col-md-4"> <!-- ISBN -->
                        <label for="isbn_id" class="control-label">ISBN</label>
                        <input type="text" value="${param.isbn}" class="form-control" id="isbn" name="isbn" placeholder="0000000000  ">
                    </div>    

                    <div class="col-md-4"> <!-- Titulo -->
                        <label for="titulo_id" class="control-label">Título</label>
                        <input type="text" value="${param.titulo}" class="form-control" id="titulo" name="titulo" placeholder="Ingrese un libro...">
                    </div>                    

                    <div class="col-md-4"> <!-- Autor -->
                        <label for="autor_id" class="control-label">Autor</label>
                        <input type="text" value="${param.autor}" class="form-control" id="autor" name="autor" placeholder="Ingrese un autor...">
                    </div>    
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4"> <!-- Editorial -->
                        <input type=""  value="${param.editorial}" name="" hidden="true" id="ref_editorial">
                        <label for="editorial_id" class="control-label">Editorial</label>
                        <select class="form-control" id="listaEditorial" name="listaEditorial">
                            <optgroup><option value= "" disabled>Elija su editorial...</option>
                                <sql:query dataSource = "${fuenteDatos}" var = "editorial">
                                    SELECT nombre from editorial;
                                </sql:query>
                                <c:forEach var = "row" items = "${editorial.rows}">
                                    <option>
                                        <c:out value = "${row.nombre}"/>
                                    </option>
                                </c:forEach>
                            </optgroup>
                        </select>                    
                    </div>

                    <div class="col-md-4"> <!-- Fecha Publicacion-->
                        <label for="fechaPublicacion_id" class="control-label">Fecha de Publicación</label>
                        <input type="date" value="${param.fecha}" class="form-control" id="fechaPublicacion" name="fechaPublicacion" value="">
                    </div>        
                </div>
            </div>
            <div class="form-group">
                <input type="hidden" name="Action" value="Crear" checked/>
                <a class="btn btn-dark" href="index.jsp">Regresar</a>
                <button id="actualizar" onclick="actualizar_ajax()" class="btn btn-primary" />ACTUALIZAR</button>
            </div>     
        </form>
    </div>
    <script type="text/javascript" src="JS/actualizar.js"></script>
</body>
</html>