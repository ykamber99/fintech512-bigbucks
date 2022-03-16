package com.ibm.security.appscan.altoromutual.servlet;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.ibm.security.appscan.altoromutual.model.User;


public class SignupServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String passwd = request.getParameter("passwd");

        if(username==null) {
            username = "";
        }
        passwd = (passwd==null)? "" :passwd;
        firstName = (firstName==null)? "" :firstName;
        lastName = (lastName==null)? "" :lastName;

        // 设置用户数据信息
        User user = new User();
        user.setUsername(username);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setPassword(passwd);

        int status = 0;
        try {
            status = SignupDao.save(user);
            if (status > 0) {
                out.print(":)...");
            }else {
                out.print(":(...");
            }
        } catch (Exception e2) {
            System.out.println(e2);
        }
        out.close();
    }

}