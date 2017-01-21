/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logout;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "logout", urlPatterns = {"/logout"})
public class logout extends HttpServlet {

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
            out.println("<title>Servlet logout</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet logout at " + request.getContextPath() + "</h1>");
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
        HttpSession s = request.getSession();
        if(s.getAttribute("email")==null)
            response.sendRedirect(response.encodeRedirectURL("login.jsp"));
        PrintWriter out=response.getWriter();
        Date dNow = new Date();
        DateFormat d=DateFormat.getInstance();
        try{
                    Class.forName("com.mysql.jdbc.Driver"); // Load Driver
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
                    
                    //E=day of week,a=am,pm,zzz=gmt
                    PreparedStatement smt=(PreparedStatement) con.prepareStatement("update loginfo set lastsignin=?,done=? where email=?");
                    smt.setString(1, d.format(dNow));
                    smt.setString(2,"Offline");
                    smt.setString(3,s.getAttribute("email").toString());
                    smt.executeUpdate();
                    smt.close();
                    
                    }catch(Exception e){
                        out.println("<h1> Error occured: code:1</h1>"+e);
                        out.println("<p style='color:red;'>Please try to register again</p>");
                        out.println("<a href='register.jsp'>Register here</a>");
                        return;
                    }
                    finally{
            s.invalidate();
        }
                    response.sendRedirect(response.encodeRedirectURL("login.jsp"));
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
        HttpSession s = request.getSession();
        s.invalidate();
        response.sendRedirect(response.encodeRedirectURL("login.jsp"));
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
