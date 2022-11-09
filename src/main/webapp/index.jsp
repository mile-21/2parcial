<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    ArrayList<Productos> lista = (ArrayList<Productos>) session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Parcial</title>
    </head>
    <body>
        <h1>Segundo Parcial Emergentes TEM-742</h1>
        <h1>Nombre: Yukiko Milenka Gutierrez Vargaz</h1>
        <h1>Carnet: 12767591 LP</h1>
        <h2>Productos</h2>
        <a href="MainController?op=nuevo">Nuevo producto</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if(lista != null){
                for(Productos item : lista){
            %>
            <tr>
                <td><%= item.getId()  %></td>
                <td><%= item.getCantidad()  %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria()  %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick='return confirm("Esta seguro de eliminar el registro")'>Eliminar</a></td>
            </tr>
            <%  
                }
            }
            %>     
        </table>
    </body>
</html>



