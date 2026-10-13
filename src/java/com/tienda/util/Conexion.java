
package com.tienda.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public static Connection conectar() throws SQLException {

        String url = "jdbc:mysql://localhost:3306/tienda";
        String usuario = "root";
        String password = "Admin$1234";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("No se encontro el driver MySQL", e);
        }

        return DriverManager.getConnection(url, usuario, password);
    }
}
