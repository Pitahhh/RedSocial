
<%@page import="java.util.Base64"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="model.db.PerfilFull"%>
<%@page import="model.db.Usuario"%>
<%@page import="model.db.Data"%>
<%@page import="javax.swing.Icon"%>
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
        <%
            //PerfilFull pf = new PerfilFull();
        %>
        <form action="cerrarSesion.do">
            <button type="submit">Cerrar sesión</button>
        </form>
        <br><br>

        <a href="perfil.jsp"><input type="submit" value="Ir Perfil"></a>
        <br><br>
        <h5><%    if (u != null) {
                out.println("Usuario: " + u.getNombre());

                Data d = new Data();
                for (PerfilFull pf : d.getPerfil(u.getId())) {
                        out.println("<br>");
                        out.println(pf.getImagen());
                        
                    }
                }
            %><h5>
                <img <%

                    %> >
                <br>
                <input type="submit" value="Seguir">
                </body>
                </html>
