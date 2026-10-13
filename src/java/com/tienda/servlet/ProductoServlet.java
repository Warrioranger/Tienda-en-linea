
package com.tienda.servlet;

import com.tienda.dao.ProductoDAO;
import com.tienda.modelo.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;

@WebServlet("/ProductoServlet")
public class ProductoServlet extends HttpServlet {

    ProductoDAO dao = new ProductoDAO();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String nombre = request.getParameter("nombre");
            BigDecimal precio = new BigDecimal(
                    request.getParameter("precio"));
            int stock = Integer.parseInt(
                    request.getParameter("stock"));

            Producto producto = new Producto(
                    0, nombre, precio, stock);

            dao.guardar(producto);

            response.sendRedirect(
                    request.getContextPath() + "/ProductoServlet");

        } catch (SQLException e) {
            throw new ServletException(
                    "Error al guardar el producto", e);

        } catch (NumberFormatException e) {
            response.sendError(400, "Precio o stock invalido");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {
            request.setAttribute("productos", dao.listar());

            request.getRequestDispatcher("/listar.jsp")
                    .forward(request, response);

        } catch (SQLException e) {
            throw new ServletException(
                    "Error al consultar productos", e);
        }
    }
}
