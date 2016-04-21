/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DBUtilities;
import model.LoginInfo;

/**
 *
 * @author StandAlone
 */
@WebServlet(name = "ServletToWelcome", urlPatterns = {"/ServletToWelcome"})
public class ServletToWelcome extends HttpServlet {

    DBUtilities dbUtilities;
    ServletContext context;
    /**
     *
     */
    @Override
    public void init() {
        context = getServletContext();
        dbUtilities = new DBUtilities();
//        dbUtilities = (DBUtilities) context.getAttribute("dbUtilities");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String user = request.getParameter("user");
        String password = request.getParameter("pwd");
        LoginInfo loginInfo = new LoginInfo();
        loginInfo.setUsername(user);
        loginInfo.setPassword(password);
        
        PrintWriter out = response.getWriter();
        try {
            dbUtilities.init();
            dbUtilities.checkRoleUsername(loginInfo);
        } catch (NamingException | SQLException ex) {
            Logger.getLogger(ServletToWelcome.class.getName()).log(Level.SEVERE, null, ex);
        }

        HttpSession session = request.getSession(true);
        session.setAttribute("loginInfo", loginInfo);
        try {
            switch (loginInfo.getRole()) {
                case "customer" : response.sendRedirect("/ISAD-Bike/_customer/index_cus.jsp"); break;
                case "admin" : response.sendRedirect("/ISAD-Bike/_admin/index_admin.jsp"); break;
                case "staff" : response.sendRedirect("/ISAD-Bike/_staff/index_staff.jsp"); break;
                case "manager" : response.sendRedirect("/ISAD-Bike/_manager/index_manager.jsp"); break;
            }
        }catch(NullPointerException ex){
            response.getWriter().print("User Not Found");
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
