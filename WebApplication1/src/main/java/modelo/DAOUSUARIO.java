/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import modelo.Cargo;
import modelo.MysqlConnect;
import modelo.Usuario;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 * @author User
 */
public class DAOUSUARIO  {

    public Usuario identificar(Usuario user) throws Exception {
        Usuario usu = null;
        Statement st = null;
        ResultSet rs = null;
//        MysqlConnect con1;
//        Connection cn1 = null;
        conexion con;
        Connection cn = null;
        String sql = "SELECT u.ID_Usuario, c.Nombre_Cargo FROM Usuario u INNER JOIN"
                + " cargo c ON u.ID_Cargo = c.ID_Cargo WHERE u.Estado = 1 AND "
                + "u.Nombre = '" + user.getNombre() + "' AND u.Clave = '" + user.getClave() + "'";
        con = new conexion();
        try {
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next() == true) {
                usu = new Usuario();
                usu.setID_Usuario(rs.getInt("ID_Usuario"));
                usu.setNombre(user.getNombre());
                usu.setCargo(new Cargo());
                usu.getCargo().setNombreCargo(rs.getString("Nombre_Cargo"));
                usu.setEstado(true);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {
            if (rs != null && rs.isClosed() == false) {
                rs.close();
            }
            rs = null;
            if (st != null && st.isClosed()) {
                st.close();
            }
            st = null;
            if (cn != null & cn.isClosed() == false) {
                cn.close();
            }
            cn = null;
        }
        return usu;
    }
}
