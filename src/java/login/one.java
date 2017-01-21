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
import java.util.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.text.DateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class one extends HttpServlet {

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
            out.println("<title>Servlet one</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet one at " + request.getContextPath() + "</h1>");
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
            throws ServletException, IOException
    {
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
            throws ServletException, IOException
    {
            HttpSession s = request.getSession();
            PrintWriter out=response.getWriter();
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            try
            {
                Class.forName("com.mysql.jdbc.Driver"); // Load Driver

                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");

                PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from resale1 where email=? and password=?");

                smt.setString(1,email);
                smt.setString(2,pass);
                ResultSet rs=smt.executeQuery();
                boolean val=rs.next();
                if(val){
                    try{
                    Date dNow = new Date();
                    DateFormat d=DateFormat.getInstance();
                    //E=day of week,a=am,pm,zzz=gmt
                    s.setAttribute("email", rs.getString("email"));
                    s.setAttribute("address", rs.getString("address"));
                    s.setAttribute("contact",rs.getString("contact"));
                    rs.close();
                    smt.close();
                    smt=(PreparedStatement) con.prepareStatement("update loginfo set lastsignin=?,done=? where email=?");
                    smt.setString(1, d.format(dNow));
                    smt.setString(2,"Online");
                    smt.setString(3,email);
                    smt.executeUpdate();
                    smt.close();
                    }catch(Exception e){
                        out.println("<h1> Error occured: code:1</h1>");
                        out.println("<p style='color:red;'>Please try to register again</p>");
                        out.println("<a href='register.jsp'>Register here</a>");
                        return;
                    }
                    con.close();
                    response.sendRedirect(response.encodeRedirectURL("logInSuccess.jsp"));
                }else{
                    //response.sendRedirect(response.encodeRedirectURL("login.jsp"));
                    out.println("<h1> Error occured: code:1</h1>");
                    out.println("<p style='color:red;'>Please try to register again</p>");
                    out.println("<a href='register.jsp'>Register here</a>");
                    return;
                }

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
