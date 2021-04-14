
<%@page import="com.emergentes.model.Persona"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<Persona> la = new ArrayList<Persona>();
        session.setAttribute("listaper", la);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC Persona</title>
    </head>
    <body>
        <center>
        <h2>UNIV: MIGUEL ANGEL SALAZAR PERCA</h2>
        <h1>REGISTRO DE VACUNAS</h1>
        <h3>Gestionar las vacunas suministradas a estudiantes de primaria</h3>
        <a href="Main?op=nuevo">NUEVO</a>
        <br><br>
        <table border ="3">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Persona item : lista) {
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombres()%></td>
                <td><%= item.getPeso()%></td>
                <td><%= item.getTalla()%></td>
                <td><%= item.getVacuna()%></td>
                <td><a href="Main?op=editar&id=<%= item.getId()%>">Editar</td>
                <td><a href="Main?op=eliminar&id=<%= item.getId()%>" onclick="return(confirm('esta seguro de eliminar??'))">eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>

        </table>
        </center>
    </body>
</html>
