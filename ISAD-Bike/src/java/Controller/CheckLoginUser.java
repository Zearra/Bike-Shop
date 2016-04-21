/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author StandAlone
 */
public class CheckLoginUser {
    
    private String roleUser;
    private Statement state;
    private Connection conn;
    private ResultSet rs;
    private String ans = null;
    
    public void prepare(){
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            conn =  DriverManager.getConnection("jdbc:mysql://database.it.kmitl.ac.th:3306/it_13","it_13","2wLjrYpe");
            state =  conn.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CheckLoginUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String checkRoleUsername(String username,String password){
        
        try {
            roleUser = "SELECT role FROM it_13.User_Login WHERE username = '"+username+"'"+" AND password = '"+password+"'";
            rs = state.executeQuery(roleUser);
            while(rs.next())
                ans =  rs.getString("role");
        } catch (SQLException ex) {
            Logger.getLogger(CheckLoginUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ans;
        
    }
    
    
    
    
}
