<%-- 
    Document   : index
    Created on : 10-feb-2023, 19:40:06
    Author     : jacqu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Estudiantes!</h1>
        <jsp:forward page="/UsuariosController"></jsp:forward> 
        
    </body>
</html>
