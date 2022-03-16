package com.ibm.security.appscan.altoromutual.servlet;

import java.util.*;
import java.sql.*;

import com.ibm.security.appscan.altoromutual.model.User;

public class SignupDao {
    // 表名称
    private static String tbName = "servlet_user";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/testdb?useSSL=false&characterEncoding=utf8", "root", "123456");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    // 插入用户注册信息
    public static int save(User u) {
        int status = 0;
        try {
            Connection con = SignupDao.getConnection();
            String sql = "INSERT INTO " + tbName + "(name,passwd,email,city) values (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getFirstName());
            ps.setString(3, u.getLastName());
            ps.setString(4, u.getPassword());
            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }


}
