
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registro de Productos</title>
    </head>
    <body>

        <h2>Registrar Producto</h2>

        <form action="ProductoServlet" method="POST">

            <label>Nombre:</label>
            <input type="text" name="nombre" required>
            <br><br>

            <label>Precio:</label>
            <input type="number" name="precio"
                   step="0.01" required>
            <br><br>

            <label>Stock:</label>
            <input type="number" name="stock" required>
            <br><br>

            <input type="submit" value="Guardar Producto">

        </form>

        <br>

        <a href="ProductoServlet">Ver productos registrados</a>

    </body>
</html>
