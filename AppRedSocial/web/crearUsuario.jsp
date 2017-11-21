

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Crear Usuario</h1>
        <form action="crearUsuario.do" method="POST">
            Nombre Usuario: <input type="text" name="nom_user" required="required">
            <br><br>
            Correo Electronico: <input type="text" name="correo" required="required">
            <br><br>
            Contraseña: <input type="password" name="password" required="required">
            <input type="submit" value="Crear Usuario">
        </form>
        <a href="index.jsp"><input type="submit" value="Volver"></a>
        <br><br>
        
    </body>
</html>
