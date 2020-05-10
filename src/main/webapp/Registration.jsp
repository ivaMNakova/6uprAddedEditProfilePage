<%--
  Created by IntelliJ IDEA.
  User: iva
  Date: 09/05/2020
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="style1.css">
    <title>* Registration page *</title>
</head>
<body>
<h2 id="h2"> Registration: </h2>

<form id="form" action="Registration" method="get">
    <div class="container">

        <label for="name"> Name:</label><br>
        <input type="name" id="name" name="email" placeholder="Enter your name"><br>

        <label for="email"> Username:</label><br>
        <input type="email" id="email" name="email" placeholder="Enter your email address"><br>

        <label for="password"> Password:</label><br>
        <input type="password" id="password" name="password" placeholder="Enter your password"><br>

        <input type="submit" value="Sign up">

    </div>
</form>
</body>
</html>
