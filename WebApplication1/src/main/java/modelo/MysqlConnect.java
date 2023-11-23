package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnect {

    private String error = "";

    public String getError() {
        return error;
    }

    public Connection connect() {
        String driver;
        driver = "com.mysql.jdbc.Driver";
        try {
            // Load JBBC driver "com.mysql.jdbc.Driver"
            Class.forName(driver);
            System.out.println("Driver cargado con éxito");

            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ingenico_soft?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&"
                    + "user=root&password=", "ingenico", "InG3niCo2598.Fr");

            return connection;
        } catch (SQLException e) {
            this.error = "Ha ocurrido un error al intentar conectar con la base de datos " + e.getMessage();
        } catch (ClassNotFoundException e) {
            this.error = "Ha ocurrido un error al cargar el driver " + e.getMessage();
        }
        return null;
    }

}
