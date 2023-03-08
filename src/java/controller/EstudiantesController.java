/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.EstudianteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.EstudianteModel;

/**
 *
 * @author jacqu
 */

@WebServlet(name = "EstudiantesController", urlPatterns = {"/EstudiantesController"})
public class EstudiantesController extends HttpServlet {
    EstudianteDAO eDAO = new EstudianteDAO();
    EstudianteModel eModel = new EstudianteModel();
    
    protected void listarEstudiantes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try{
           request.setAttribute("lista", eDAO.BuscarTodos());
           request.getRequestDispatcher("listar.jsp").forward(request, response);
           
        }catch(ClassNotFoundException ex){
            Logger.getLogger(EstudiantesController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String accion = request.getParameter("accion")== null ? "":request.getParameter("accion");
            int id = request.getParameter("id")== null ? 0:Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre")== null ? "":request.getParameter("nombre");
            String apellido = request.getParameter("apellido")== null ? "":request.getParameter("apellido");
            int edad = request.getParameter("edad")== null ? 0:Integer.parseInt(request.getParameter("edad"));
            switch(accion){
                case "":
                    listarEstudiantes(request, response);
                    break;
                case "Nuevo":
                    response.sendRedirect("nuevo.jsp");
                    break;
                case "Guardar":
                    eModel.setId(id);
                    eModel.setNombre(nombre);
                    eModel.setApellido(apellido);
                    eModel.setEdad(edad);
                    eDAO.Insertar(eModel);
                    listarEstudiantes(request, response);
                    break;
                case "Eliminar":
                    eDAO.Eliminar(id);
                    listarEstudiantes(request, response);
                    break;
                case "Editar":
                    EstudianteModel estudiante;
                try {
                    estudiante = eDAO.BuscarPorId(id);
                     request.setAttribute("estudiante", estudiante);
                       request.getRequestDispatcher("editar.jsp").forward(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(EstudiantesController.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
                case "Actualizar":   
                    EstudianteModel est = new EstudianteModel();
                    est.setId(id);
                    est.setApellido(apellido);
                    est.setNombre(nombre);
                    est.setEdad(edad);
                    try {
                        eDAO.Actualizar(est);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(EstudiantesController.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    listarEstudiantes(request, response);
                break;
                default:
                    throw new AssertionError();
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EstudiantesController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EstudianteModel eModel = new EstudianteModel();
        EstudianteDAO eDAO = new EstudianteDAO();
        eModel.setId(Integer.parseInt(request.getParameter("id")));
        eModel.setNombre(request.getParameter("nombre"));
        eModel.setApellido(request.getParameter("apellido"));
        eModel.setEdad(Integer.parseInt(request.getParameter("edad")));
        try{
            eDAO.Insertar(eModel);
            listarEstudiantes(request, response);
        }catch(ClassNotFoundException ex){
            Logger.getLogger(EstudiantesController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
