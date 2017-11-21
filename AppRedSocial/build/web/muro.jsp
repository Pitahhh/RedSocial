
<%@page import="model.db.Usuario"%>
<%@page import="model.db.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Usuario u = (Usuario) request.getSession().getAttribute("usuario");

    if (u == null) {
        request.getSession().setAttribute("error", new Error("Debe Ingresar Rut"));
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <form action="cerrarSesion.do">
            <button type="submit">Cerrar sesión</button>
        </form>
        <br><br>

        <a href="perfil.jsp"><input type="submit" value="Ir Perfil"></a>
        <br><br>
        <h5><%    if (u != null) {
                out.println("Usuario: " + u.getNombre());

                Data d = new Data();
            }
            %><h5>
                <img src="https://i.pinimg.com/originals/4d/4e/ff/4d4eff4c653800b383ebd4609dc2e67c.jpg">
                <br>
                <input type="submit" value="Seguir">
                </body>
                </html>
