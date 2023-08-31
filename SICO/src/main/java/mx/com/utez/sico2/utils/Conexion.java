package mx.com.utez.sico2.utils;

import com.mysql.cj.MysqlConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public Connection getConnection(){
        final String DBNAME = "sico", USERNAME = "root", PASSWORD = "root", TIMEZONE = "America/Mexico_City",
                USESSL = "false", PUBLICKEY = "TRUE";
        String dataSource = String.format("jdbc:mysql://localhost:3306/%s?user=%s" +
                        "&password=%s&serverTimezone=%s&useSSL=%s&allowPublicKeyRetrieval=%s",
                DBNAME, USERNAME, PASSWORD, TIMEZONE,USESSL,
                PUBLICKEY);

        try{
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            return DriverManager.getConnection(dataSource);
        } catch (SQLException e){
            System.out.println(this.getClass().getCanonicalName() + "->" + e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        Connection con = new Conexion().getConnection();
        if (con != null){
            System.out.println("Conexión realizada");
            try {
                con.close();
            } catch (SQLException e){
            }
        } else {
            System.out.println("Conexión fallida");
        }
    }
}
