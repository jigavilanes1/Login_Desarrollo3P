/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UsuariosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UsuariosModel;

/**
 *
 * @author jacqu
 */
public class UsuariosController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String accion = request.getParameter("accion")== null ? "":request.getParameter("accion");
            String usuario = request.getParameter("usuario")== null ? "":request.getParameter("usuario");
            String clave = request.getParameter("clave")== null ? "":request.getParameter("clave");
            switch(accion){
                case "Ingresar":
                    UsuariosDAO uDAO = new UsuariosDAO();
                    UsuariosModel uModel = uDAO.ValidarUsuario(usuario, clave);
                    if(uModel.getNombre() != null){
                        response.sendRedirect("EstudiantesController");
                    }else{
                        response.sendRedirect("login.jsp");
                    }
                    break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
