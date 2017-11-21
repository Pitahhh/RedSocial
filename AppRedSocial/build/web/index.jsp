<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Sosogram</h1>
        <br>
        <form action="inicioSesion.do" method="POST">
            
            Usuario: <input id="user" type="text" name="user" required="required">
            Contraseña: <input id="password" type="password" name="password" required="required">

            <%
                Error e = (Error) request.getSession().getAttribute("error");
                if (e != null) {
                    out.println("<p class='text-danger input-sm'>" + e.getMessage() + "</p>");
                    request.getSession().removeAttribute("error");
                }
            %>

            <br><br>
            <input type="submit" value="Ingresar">
        </form>


        <!--
        <h3>Crear Usuario</h3>
        Nombre Usuario: <input id="nombre_user" type="text" name="nom_user" required="">
        <br><br>
        Correo Electronico: <input id="correo" type="text" name="correo" required="">
        <br><br>
        Contraseña: <input id="contraseña" type="text" name="contraseña" required="">
        -->
        <br><br>
        <a href="crearUsuario.jsp"><input type="submit" value="Crear Usuario"></a>

    </body>
</html>
