/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "index", urlPatterns = {"/index"})
public class index extends HttpServlet {

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
            out.println("<title>Servlet index</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet index at " + request.getContextPath() + "</h1>");
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
        /*HttpSession s = request.getSession();
        String email=(String) s.getAttribute("email");
        String address=(String) s.getAttribute("address");
        String contact=(String) s.getAttribute("contact");
        PrintWriter out=response.getWriter();
        out.println(email+" "+address+" "+contact+" ");
    */
        response.sendRedirect("register.jsp");
        return;
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
       /* HttpSession s = request.getSession();
        String email=(String) s.getAttribute("email");
        PrintWriter out=response.getWriter();
        out.println(email);
        */
       PrintWriter out=response.getWriter();
       
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       String password=request.getParameter("password");
       String address=request.getParameter("addr");
       String date=request.getParameter("date12");
       String contact=request.getParameter("con");
       String bio=request.getParameter("bio");
       String about=request.getParameter("about");
       if(contact.length()!=10){
           response.sendRedirect(response.encodeRedirectURL("register.jsp"));
       }
       HttpSession s = request.getSession();
       s.setAttribute("mymail", email);
       s.setAttribute("pwd", password);
       s.setAttribute("cy", address);
       s.setAttribute("dob1", date);
       s.setAttribute("mob", contact);
       s.setAttribute("b", bio);
       s.setAttribute("abt", about);
       s.setAttribute("name", name);
       //response.setContentType("text/html;charset=UTF-8");
       response.sendRedirect(response.encodeRedirectURL("regprocess.jsp"));
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
