
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.tienda.modelo.Producto"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Productos</title>
</head>
<body>

    <h2>Productos Registrados</h2>

    <table border="1" cellpadding="8">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Stock</th>
        </tr>

        <%
            List<Producto> productos =
                (List<Producto>) request.getAttribute("productos");

            if (productos != null) {
                for (Producto p : productos) {
        %>

        <tr>
            <td><%= p.getId() %></td>
            <td><%= p.getNombre() %></td>
            <td><%= p.getPrecio() %></td>
            <td><%= p.getStock() %></td>
        </tr>

        <%
                }
            }
        %>

    </table>

    <br>

    <a href="index.jsp">Registrar otro producto</a>

</body>
</html>
