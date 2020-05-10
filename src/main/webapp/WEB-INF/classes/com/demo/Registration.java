package com.demo;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.*;
import java.util.Random;

public class Registration extends HttpServlet {

    private int user_id;
    File file = new File("users.txt");
    private static String newLine = System.lineSeparator();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        Random ran = new Random();
        this.user_id =ran.nextInt();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        FileWriter writer = new FileWriter(file, true);

        BufferedWriter buffered_Writer = new BufferedWriter(writer);
        buffered_Writer.write(newLine + user_id + ":"+  name + ":" + email + ":" + password);
        buffered_Writer.close();

        response.sendRedirect("index.jsp");
    }
}

