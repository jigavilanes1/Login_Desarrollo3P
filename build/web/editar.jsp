<%-- 
    Document   : Nuevo
    Created on : 10-feb-2023, 20:31:49
    Author     : jacqu
--%>

<%@page import="model.EstudianteModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Estudiante</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="mx-auto" style="width: 450px;">  
        <h2 class="text-center">♥----------------------♥</h2>
        <h2 class="text-center">Editar Estudiante</h2>
        <h2 class="text-center">♥----------------------♥</h2>
        <%
            EstudianteModel estudiante = (EstudianteModel) request.getAttribute("estudiante");
            
          %>
        <form action="EstudiantesController" method="GET">
        <div class="text-center">
            <div class="mb-3">
                <label class="form-label">Id</label>
                <input type="number" class="form-control" name="id" id="id" value="<%=estudiante.getId()%>">
                <div class="form-text">No puede editar el id del estudiante.</div>
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <input type="text" class="form-control" name="nombre" id="nombre" value="<%=estudiante.getNombre()%>">
                <div class="form-text">Actualice el nombre del estudiante.</div>
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <input type="text" class="form-control" name="apellido" id="apellido" value="<%=estudiante.getApellido()%>">
                <div class="form-text">Actualice el apellido del estudiante.</div>
            </div>
            <div class="mb-3">
                <label class="form-label">Edad</label>
                <input type="number" class="form-control" name="edad" id="edad" value="<%=estudiante.getEdad()%>">
                <div class="form-text">Actualice la edad del estudiante.</div>
            </div>
            <br>
        </div>
        <br>
        <div class="text-center"> 
            <input class="btn btn-info" type="submit" name="accion" value="Actualizar">
        </div>
        </form>
    </body>
</html>
