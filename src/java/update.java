/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author MY
 */
@WebServlet(urlPatterns = {"/update"})
public class update extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String _id=request.getParameter("id");
            String _doctor_name=request.getParameter("doctor_name");
            String _specialized_in=request.getParameter("specialized_in");
            String _chember=request.getParameter("chember");
             String _Address=request.getParameter("Address");
              String _contact=request.getParameter("contact");
            
             try{
              if(_doctor_name!=null)
              {
                  Class.forName("com.mysql.jdbc.Driver").newInstance();
                 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/newdatabase3","root",""); 
      
                  Statement st=conn.createStatement();
            String query= "update doctorinfo set doctor_name='"+_doctor_name+"', specialized_in='"+_specialized_in+"' ,chember='"+_chember+"', Address='"+_Address+"', contact='"+_contact+"' where id='"+_id+"'";
            out.println("data is inserted");
           
                   st.executeUpdate(query);
                     response.sendRedirect("Adminview.jsp");
                 
                
              }
              
          }catch(Exception ex)  {
              out.println("Exception :" +ex.getMessage());
          }
            
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
