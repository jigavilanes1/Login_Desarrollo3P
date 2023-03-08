/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.UsuariosModel;

/**
 *
 * @author jacqu
 */
public class UsuariosDAO {
    
    Conexion conexion = new Conexion();
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    public UsuariosModel ValidarUsuario(String usuario, String clave) throws SQLException{
        UsuariosModel uModelTemp = new UsuariosModel();
        try {
            String sql = "select * from Usuarios where usr= ? and pwd = ?";
            conn = conexion.Conectar();
            ps = conn.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            while(rs.next()){
                uModelTemp.setId(rs.getInt("ID"));
                uModelTemp.setNombre(rs.getString("NOMBRE"));
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            conexion.Cerrar(conn);
        }
        return uModelTemp;
    }
}
