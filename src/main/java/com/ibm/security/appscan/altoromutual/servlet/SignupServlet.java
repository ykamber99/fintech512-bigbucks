package com.ibm.security.appscan.altoromutual.servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.ibm.security.appscan.altoromutual.util.DBUtil;
import com.ibm.security.appscan.altoromutual.model.User;


public class SignupServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = null;

        try {
            String firstName = request.getParameter("new_first");
            String lastName = request.getParameter("new_last");
            String username = request.getParameter("new_uid");
            String passwd = request.getParameter("new_passw");

            if(username==null) {
                username = "";
            }
            passwd = (passwd==null)? "" :passwd;
            firstName = (firstName==null)? "" :firstName;
            lastName = (lastName==null)? "" :lastName;

        /*
            User user = new User();
            user.setUsername(username);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setPassword(passwd);*/

            if (message == null){
                String error = DBUtil.addUser(username, passwd, firstName, lastName);

                if (error != null)
                    message = error;
            }

            if (message != null) {
                message = "Error: " + message;
                response.sendRedirect("signup.jsp");
                return;
            }
            else
                message = "Requested operation has completed successfully.";
        } catch (Exception e2) {
            response.sendRedirect("signup.jsp");
            return;
        }
        response.sendRedirect("login.jsp");
        return;
    }

}