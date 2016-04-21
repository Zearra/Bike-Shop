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
import model.DBUtilities;
import model.LoginInfo;
import model.UserRegis;
import model.Addresses;

/**
 *
 * @author kanathip
 */
@WebServlet(name = "RegisServlet", urlPatterns = {"/RegisServlet"})
public class RegisServlet extends HttpServlet {

    DBUtilities dbUtilities;
    public void init(){
        dbUtilities = new DBUtilities();
    }
    
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
        UserRegis userRegis = new UserRegis();
        LoginInfo loginInfo = new LoginInfo();
        Addresses address = new Addresses();
        
        loginInfo.setUsername(request.getParameter("username"));
        loginInfo.setPassword(request.getParameter("password"));
        loginInfo.setRole("customer");
        
        address.setDistrict(request.getParameter("district"));
        address.setSubDistrict(request.getParameter("subDistrict"));
        address.setHouseNo(request.getParameter("houseNo"));
        address.setProvince(request.getParameter("province"));
        address.setStreet(request.getParameter("street"));
        address.setZipcode(Integer.parseInt(request.getParameter("zipcode")));
        
        userRegis.setLoginInfo(loginInfo);
        userRegis.setAddresses(address);
        userRegis.setEmail(request.getParameter("email"));
        userRegis.setSsd(request.getParameter("ssd"));
        userRegis.setTel(request.getParameter("tel"));
        userRegis.setfName(request.getParameter("fName"));
        userRegis.setlName(request.getParameter("lName"));
        try {
            dbUtilities.init();
            dbUtilities.regisUser(userRegis);
        } catch (SQLException | NamingException ex) {
            Logger.getLogger(RegisServlet.class.getName()).log(Level.SEVERE, null, ex);
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

