package com.demo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Registration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        Users[] users;
        users = new Users[100];

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        for(int i =0; i < users.length; i++)
        {
            users[i] = new Users();
        }



        response.sendRedirect("index.jsp");
    }
}

