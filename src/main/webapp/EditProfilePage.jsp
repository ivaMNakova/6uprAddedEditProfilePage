<%--
  Created by IntelliJ IDEA.
  User: iva
  Date: 10/05/2020
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.demo.Users"%>

<!DOCTYPE html>
<!--suppress ALL -->
<html>
<head>
    <title>Edit Profile page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<jsp:useBean id="users" class="com.demo.Users"></jsp:useBean>
<jsp:setProperty name="users" property="nameB" value='<%= request.getParameter("name") %>'/>
<jsp:setProperty name="users" property="emailB" value='<%= request.getParameter("email") %>'/>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xl-12 col-xs-12" id="top">
            <p>
            </p>
        </div>
    </div>
</div>
<div class="container-fluid" style="background-color: #ccc;padding-bottom: 20px;">
    <div class="container" style="text-align: center; width: 75%;">
        <div class="row">
            <div class="col-xl-4 col-md-6 col-sm-12 col-xs-12" style="padding-right: 0;">
                <div style="text-align: right;"><img src="male.svg" id="image"></div>
            </div>
            <div class="col-xl-8 col-md-6 col-sm-12 col-xs-12" style="padding-top: 40px;">
                <h2 id="head">Profile information</h2>
                <p id="p1">
                    Name: <jsp:getProperty name="users" property="nameB"/>
                </p>
                <p id="p1">
                    Student
                </p>
                <p id="p1">
                    Description:
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xl-12 col-xs-12">
                <h2 id="head1">Skills</h2>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
