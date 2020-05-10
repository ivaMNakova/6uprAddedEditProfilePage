package com.demo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Random;


public class Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        FileReader reader = new FileReader("users.txt");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

         byte[] bytes = Files.readAllBytes(Paths.get("users.txt"));
         String s = new String(bytes);

        if(s.indexOf(email) != 1 && s.indexOf(password) != 1)
        {
            response.sendRedirect("UserServlet");
        }
        else  {
            response.sendRedirect("index.jsp");
        }
}
    }

