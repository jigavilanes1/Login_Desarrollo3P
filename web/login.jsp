<%-- 
    Document   : Login
    Created on : 15-feb-2023, 19:56:32
    Author     : jacqu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="mx-auto" style="width: 450px;">
        <h2 class="text-center">♥----------------------♥</h2>
        <h2 class="text-center" >Login</h2>
        <h2 class="text-center">♥----------------------♥</h2>
        <img src="https://assets.stickpng.com/images/585e4beacb11b227491c3399.png" class="rounded mx-auto d-block" width="100px">
        <br>
        <form action="UsuariosController" method="POST">
            <div class="text-center">
                <div class="mb-3">
                    <label class="form-label">Ingrese el usuario</label>
                    <input type="text" class="form-control" name="usuario" id="usuario">
                    <div class="form-text">Ingrese el usuario.</div>
                </div>
                <div class="mb-3">
                    <label class="form-label">Ingrese la clave</label>
                    <input type="text" class="form-control" name="clave" id="clave">
                    <div class="form-text">Ingrese la clave.</div>
                </div>
                <br>
                <input class="btn btn-info" type="submit" name ="accion" value="Ingresar"/>
            </div>
        </form>
    </body>
</html>
