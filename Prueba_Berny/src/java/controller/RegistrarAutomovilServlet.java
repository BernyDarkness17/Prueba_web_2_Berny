package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Automovil;
import model.Data;

@WebServlet(name = "RegistrarAutomovilServlet", urlPatterns = {"/registrarAutomovil.do"})
public class RegistrarAutomovilServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Data d = new Data();
            request.setCharacterEncoding("UTF-8");
            Automovil autito = new Automovil();

            autito.setPatente(request.getParameter("patente"));
            autito.setMarca(request.getParameter("marca"));
            autito.setAnio(Integer.parseInt(request.getParameter("anio")));
            autito.setDetalles(request.getParameter("detalles"));
            
            autito.setRut(request.getParameter("rut"));
            autito.setNombre(request.getParameter("nombreDuenio"));
            autito.setTelefono(request.getParameter("telefono"));
            
            d.crear(autito);
            
            response.sendRedirect("Registrar.jsp");
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrarAutomovilServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistrarAutomovilServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
