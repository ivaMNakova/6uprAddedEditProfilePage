<%@page import="com.demo.Users"%>


<!DOCTYPE html>
<!--suppress ALL -->
<html>
<head>
    <title>Profile page</title>
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
                <form action="EditProfilePage.jsp" id="labels">
                    <button name="Edit" value="Edit">Edit</button>
                </form>

            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xl-12 col-xs-12">
                <h2 id="head1">Skills</h2>
            </div>
        </div>
        <div class="row" style="background-color: white;border-radius: 10px;">
            <div class="col-md-6 col-sm-6 col-xl-6 col-xs-12">
                <h3 id="head2">
                    Languages
                </h3>
                <p id="p2" style="padding-top: 10px;">  JAVA  </p>
                <div class="progress md-progress" id="progress">
                    <div class="progress-bar" role="progressbar" style="width: 25%; height: 4px;padding-left: 50px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p id="p2" style="padding-top: 10px;">HTML</p>
                <div class="progress md-progress" id="progress">
                    <div class="progress-bar" role="progressbar" style="width: 35%;padding-left: 50px; height: 4px;" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p id="p2" style="padding-top: 10px;">CSS</p>
                <div class="progress md-progress" id="progress">
                    <div class="progress-bar" role="progressbar" style="width: 60%;padding-left: 50px; height: 4px;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p id="p2" style="padding-top: 10px;">JavaScript</p>
                <div class="progress md-progress" id="progress" style="margin-bottom: 20px;">
                    <div class="progress-bar" role="progressbar" style="width: 10%;padding-left: 50px; height: 4px;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xl-6 col-xs-12">
                <h3 id="head2">
                    Personal
                </h3>
                <p id="p2">Communicative</p>
                <div class="progress md-progress" id="progress">
                    <div class="progress-bar" role="progressbar" style="width: 4%; height: 4px;padding-left: 50px;" aria-valuenow="4" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p id="p2" style="padding-top: 10px;">Team work</p>
                <div class="progress md-progress" id="progress">
                    <div class="progress-bar" role="progressbar" style="width: 20%;padding-left: 50px; height: 4px;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p id="p2" style="padding-top: 10px;">Creativity</p>
                <div class="progress md-progress" id="progress" style="margin-bottom: 20px;">
                    <div class="progress-bar" role="progressbar" style="width: 15%;padding-left: 50px; height: 4px;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xl-12 col-xs-12">
                <h2 id="head1">Contacts</h2>
            </div>
        </div>
        <div class="row" style="background-color: white;border-radius: 10px;">
            <div class="col-md-6 col-sm-6 col-xl-6 col-xs-12">
                <p id="labels" style="padding-top: 20px;">Email</p>
                <p id="value" style="text-decoration: underline;"> <jsp:getProperty name="users" property="emailB"/> </p>
                <p id="labels">Mobile</p>
                <p id="value" style="margin-bottom: 20px;">09876543219</p>
            </div>
            <div class="col-md-6 col-sm-6 col-xl-6 col-xs-12">
                <p id="labels" style="padding-top: 20px;">City</p>
                <p id="value">Varna</p>
                <p id="labels">Street</p>
                <p id="value" style="margin-bottom: 20px;">Studentska 1</p>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xl-12 col-xs-12" style="background-color:#012e5e; height: 150px">
            <p>
            </p>
        </div>
    </div>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</html>
