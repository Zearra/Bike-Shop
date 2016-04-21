/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Controller.CheckLoginUser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author kanathip
 */
public class DBUtilities {

    Connection conn;

    public void init() throws NamingException, SQLException {
        conn = getVcouldDB().getConnection();
    }

    private DataSource getVcouldDB() throws NamingException {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/vcouldDB");
    }

    //TODO
    public void regisUser(UserRegis userRegis) throws SQLException {
        insertUsername(userRegis.getLoginInfo());
        insertAddress(userRegis.getAddress(), userRegis.getLoginInfo());
        Statement statement = conn.createStatement();
        String sql;
        sql = "SELECT MAX(address_id) FROM Address WHERE address_id LIKE \"C%\"";

        String address_id = statement.executeQuery(sql).getString(1);
        sql = "INSERT INTO Customer(fName, lName, tel, email, SSD, username, address_id)"
                + "(?, ?, ?, ?, ?, ?, ?);";
        PreparedStatement sqlPrepare = conn.prepareStatement(sql);
        sqlPrepare.setString(1, userRegis.getfName());
        sqlPrepare.setString(2, userRegis.getlName());
        sqlPrepare.setString(3, userRegis.getTel());
        sqlPrepare.setString(4, userRegis.getEmail());
        sqlPrepare.setString(5, userRegis.getSsd());
        sqlPrepare.setString(6, userRegis.getLoginInfo().getUsername());
        sqlPrepare.setString(7, address_id);
    }

    public ResultSet selectAddress(String address_id) throws SQLException {
        String sql = "SELECT address_id FROM Address WHERE address_id = '" + address_id + "';";
        Statement sqlStatement = conn.createStatement();
        return sqlStatement.executeQuery(sql);
    }

    public void insertUsername(LoginInfo loginInfo) throws SQLException {
        String sql = "INSERT INTO User_Login VALUES(?, SHA2(?, 256), ?);";
        PreparedStatement sqlStatement = conn.prepareStatement(sql);
        sqlStatement.setString(1, loginInfo.getUsername());
        sqlStatement.setString(2, loginInfo.getPassword());
        sqlStatement.setString(3, loginInfo.getRole());
        sqlStatement.execute();
    }

    /**
     *
     * @param address
     * @param loginInfo
     * @throws SQLException
     */
    public void insertAddress(Addresses address, LoginInfo loginInfo) throws SQLException {
        String role = loginInfo.getRole();
        int current_address = countAddress(loginInfo);
        String address_prefix;
        String sql = "insert into Address( house_no, street, sub_distric, distric, province, zipcode, address_id) "
                + "values(?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement sqlStatement = conn.prepareStatement(sql);
        sqlStatement.setString(1, address.getHouseNo());
        sqlStatement.setString(2, address.getStreet());
        sqlStatement.setString(3, address.getSubDistrict());
        sqlStatement.setString(4, address.getDistrict());
        sqlStatement.setString(5, address.getProvince());
        sqlStatement.setInt(6, address.getZipcode());
        if (role.equals("customer")) {
            address_prefix = "C";
        } else {
            address_prefix = "E";
        }

        sqlStatement.setString(7, address_prefix + String.valueOf(current_address + 1));
        sqlStatement.execute();
    }

    public int countAddress(LoginInfo loginInfo) throws SQLException {
        String role = loginInfo.getRole();
        String sql;
        String address_like;
        if (role.equals("customer")) {
            address_like = "\"C%\"";
        } else {
            address_like = "\"E%\"";
        }
        sql = "SELECT COUNT(address_id) FROM Address WHERE address_id LIKE " + address_like;
        Statement statement = conn.createStatement();
        ResultSet result = statement.executeQuery(sql);
        result.next();
        int ans = result.getInt(1);
        return ans;
    }

    public void userAskQuestion(AskQuestionModel askQuestionInfo) throws SQLException {
        String sql = "INSERT INTO Question (question_desc, Questioner_email, Questioner_name, Question_title) VALUES (?, ?, ?, ?);";
        PreparedStatement sqlStatement = conn.prepareStatement(sql);
        sqlStatement.setString(1, askQuestionInfo.getQuestionDesc());
        sqlStatement.setString(2, askQuestionInfo.getEmail());
        sqlStatement.setString(3, askQuestionInfo.getName());
        sqlStatement.setString(4, askQuestionInfo.getTitle());
        sqlStatement.execute();
    }

    public void insertComment(Comment comment) throws SQLException {
        String sql = "INSERT INTO Comment(comment_header, comment_desc) VALUES('" + comment.getHeader() + "', '" + comment.getComment() + "');";
        Statement sqlStatement = conn.createStatement();
        sqlStatement.execute(sql);
    }

    public String checkForgetPassword(ForgetPassModel forgetPassModel) throws SQLException {
        boolean found;
        String role;
        ResultSet result;
        Statement sqlStatement = conn.createStatement();
        String sql = "SELECT User_Login.role FROM %s JOIN User_Login USING (username) WHERE username = '" + forgetPassModel.getUsername() + "' AND email = '" + forgetPassModel.getEmail() + "';";
        result = sqlStatement.executeQuery(String.format(sql, "Employees"));
        found = result.next();
        if (found) {
            return result.getString("role");
        }
        result = sqlStatement.executeQuery(String.format(sql, "Customer"));
        found = result.next();
        if (found) {
            return result.getString("role");
        }
        return null;
    }

    public String setNewPassword(ForgetPassModel forgetPassModel) {
        Random random = new Random();
        char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 10; i++) {
            char c = chars[random.nextInt(chars.length)];
            sb.append(c);
        }
        String generatedPass = sb.toString();
        String sql = "UPDATE User_Login SET password = SHA2('" + generatedPass + "', 256) WHERE username = '" + forgetPassModel.getUsername() + "';";
        return generatedPass;
    }

    public void checkRoleUsername(LoginInfo loginInfo) throws SQLException {
        String roleUser;
        ResultSet rs;
        Statement state = conn.createStatement();
        try {
            roleUser = "SELECT role FROM it_13.User_Login WHERE username = '" + loginInfo.getUsername() + "'" + " AND password = SHA2('" + loginInfo.getPassword() + "', 256)";
            rs = state.executeQuery(roleUser);
            if (rs.next()) {
                loginInfo.setRole(rs.getString("role"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CheckLoginUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void close() throws SQLException {
        conn.close();
    }
}
