
<%@page import="model.db.Data"%>
<%@page import="model.db.Usuario"%>
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
        <h1>Sosogram</h1>
        <form action="cerrarSesion.do">
            <button type="submit">Cerrar sesión</button>
            
        </form>
        <%if (u != null) {
                out.println("Usuario: " + u.getNombre());

                Data d = new Data();
                out.println("Seguidos: "+d.getFollows(u.getId()).getFk_UsuarioSeguido());
                out.println("Seguidores: "+d.getFollows(u.getId()).getFk_UsuarioSeguidor());
        }
        %>
        <br>
        
        <a href="muro.jsp"><input type="submit" value="Ir Muro"></a>
        <div>
            <img src="https://i.pinimg.com/originals/4d/4e/ff/4d4eff4c653800b383ebd4609dc2e67c.jpg">
            <br><br>

            <br><br>

        </div>
    </body>
</html>
