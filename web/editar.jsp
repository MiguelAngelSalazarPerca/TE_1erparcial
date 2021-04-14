<%@page import="com.emergentes.model.Persona"%>
<%
    Persona reg = (Persona) request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1>REGISTRO DE PERSONAS</h1>
        <form action="Main" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly></td>
                </tr>
                <tr>
                    <td> Nombres</td>
                    <td><input type="text" name="nombres" value="<%= reg.getNombres()%>"></td>
                </tr>
                <tr>
                    <td> Peso</td>
                    <td><input type="text" name="peso" value="<%= reg.getPeso()%>"></td>
                </tr>
                <tr>
                    <td> Talla</td>
                    <td><input type="text" name="talla" value="<%= reg.getTalla()%>"></td>
                </tr>
                <tr>
                    <td>Vacuna</td> 
                    <td><input type="checkbox" name="vacuna" value="si">si
                        <input type="checkbox" name="vacuna" value="no" />no
                    </td>
                </tr>    
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>

            </table>
        </form>
        </center>
    </body>
</html>
