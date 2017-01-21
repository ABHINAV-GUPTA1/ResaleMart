/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package message;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class mesg extends HttpServlet {

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
            out.println("<title>Servlet mesg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet mesg at " + request.getContextPath() + "</h1>");
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
        response.sendRedirect("error.jsp");
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
        PrintWriter out=response.getWriter();
        
        String from5=request.getParameter("from5");
        String to5=request.getParameter("to");
        if (from5.equals(to5)) {
            out.println("You Can't send mesaage to yourself.......");
            response.sendRedirect("profile.jsp");
            return;
        }
        String message=request.getParameter("message");
        String post_id=request.getParameter("post_id");
        Date dNow = new Date();
        DateFormat d=DateFormat.getInstance();
        //System.out.println(d.format(dNow));
        int i=0;
        
        try{
        String str[]={from5,to5};   
        Class.forName("com.mysql.jdbc.Driver"); // Load Driver
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///abhi","root","");
        while(i<2){
            PreparedStatement smt1 = (PreparedStatement) con.prepareStatement("select pic from resale1 where email=?");
            smt1.setString(1,str[i]);
            ResultSet rs1=smt1.executeQuery();
            if(rs1.next()){
                str[i]=rs1.getString("pic");
            }
            i++;
            smt1.close();
            rs1.close();
        }
        PreparedStatement smt = (PreparedStatement) con.prepareStatement("insert into message(from5,to5,mesg,date,post_id,picf,pict) values(?,?,?,?,?,?,?)");
        smt.setString(1,from5);
        smt.setString(2,to5);
        smt.setString(3,message);
        smt.setString(4,d.format(dNow));
        smt.setString(5,post_id);
        smt.setString(6,str[0]);
        smt.setString(7,str[1]);
        smt.executeUpdate();
        smt.close();
        con.close();
        response.sendRedirect("mesgSuccess.jsp");
        }
        catch(Exception e)
        {
            out.println("<br/>Error with database : ");
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
