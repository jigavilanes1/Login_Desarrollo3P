<%-- 
    Document   : Estudiante
    Created on : 03-feb-2023, 20:48:20
    Author     : jacqu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estudiantes</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="mx-auto" style="width: 1250px;">  
        <h2 class="text-center">♥----------------------♥</h2>
        <h1 class="text-center">Estudiantes BD</h1>
        <h2 class="text-center">♥----------------------♥</h2>
        <form class="text-center" action="EstudiantesController">
            <p>Crear nuevo Estudiante</p>
            <input class="btn btn-success" type="submit" name="accion" value="Nuevo">
        </form>
        <table class="table table-striped">
            <thead class="table-dark">
            <tr><th>Id</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Edad</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
        <c:forEach var="estudianteTemp" items="${lista}">
            <tr>
                <td><c:out value="${estudianteTemp.id}"/></td>
                <td><c:out value="${estudianteTemp.nombre}"/></td>
                <td><c:out value="${estudianteTemp.apellido}"/></td>
                <td><c:out value="${estudianteTemp.edad}"/></td>
                <td>
                    <form action="EstudiantesController">
                        <input type="hidden" name="id" value="<c:out value="${estudianteTemp.id}"/>">
                        <input class="btn btn-danger" type="submit" name="accion" value="Eliminar">
                    </form>
                </td>
                <td>
                    <form action="EstudiantesController">
                        <input type="hidden" name="id" value="<c:out value="${estudianteTemp.id}"/>">
                        <input class="btn btn-info" type="submit" name="accion" value="Editar">
                    </form>
                </td>
            </tr>
            <br>
        </c:forEach>  
        </table>
    </body>
</html>
