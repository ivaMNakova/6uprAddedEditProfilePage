package com.demo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        Users users = new Users();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        request.getSession().setAttribute("user", users);


        if(email.equals("iva@gmail.com") && password.equals("admin"))
        {
            response.sendRedirect("ProfilePage.jsp");
        }
        else
            {
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
}
    }

