/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class sub extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sub</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet sub at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        
        HttpSession s = request.getSession();
        PrintWriter out=response.getWriter();
        if (request.getParameter("widget-subscribe-form-email") == null){
            return;
        }
        
        String reg="not",email=request.getParameter("widget-subscribe-form-email");
        //String pass=request.getParameter("pass");
        if(s.getAttribute("email")!=null){
            reg="yes";
        } 
        //out.println("yes");
            try
            {
                Class.forName("com.mysql.jdbc.Driver"); // Load Driver

                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");

                PreparedStatement smt = (PreparedStatement) con.prepareStatement("insert into subscription values(?,?)");

                smt.setString(1,email);
                smt.setString(2,reg);
                smt.executeUpdate();
            }
            catch(Exception e)
            {
                out.println("<h1> Error occured: code:2</h1>");
                //response.sendRedirect(response.encodeRedirectURL("register.jsp"));
                out.println("<p style='color:red;'>Please try to register again</p>");
                out.println("<a href='register.jsp'>Register here</a>");        
                return;
            }
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
