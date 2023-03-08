<%-- 
    Document   : Nuevo
    Created on : 08-feb-2023, 20:31:49
    Author     : jacqu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Estudiante</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="mx-auto" style="width: 450px;">  
        <h2 class="text-center">♥----------------------♥</h2>
        <h2 class="text-center">Nuevo Estudiante</h2>
        <h2 class="text-center">♥----------------------♥</h2>
        <form action="EstudiantesController" method="POST">
        <div class="text-center">
            <div class="mb-3">
                <label class="form-label">Id</label>
                <input type="number" class="form-control" name="id" id="id">
                <div class="form-text">Ingrese el id del estudiante.</div>
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <input type="text" class="form-control" name="nombre" id="nombre">
                <div class="form-text">Ingrese el nombre del estudiante.</div>
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <input type="text" class="form-control" name="apellido" id="apellido">
                <div class="form-text">Ingrese el apellido del estudiante.</div>
            </div>
            <div class="mb-3">
                <label class="form-label">Edad</label>
                <input type="number" class="form-control" name="edad" id="edad">
                <div class="form-text">Ingrese la edad del estudiante.</div>
            </div>
            <br>
        </div>
        <br>
        <div class="text-center"> 
            <input class="btn btn-info" type="submit" name="Guardar" value="Guardar">
        </div>
        </form>
    </body>
</html>
