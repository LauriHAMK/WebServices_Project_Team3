<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="data.Kysymykset"%>
<%@ page import="dao.dao"%>

<!DOCTYPE html>
<html>

<head>
    <meta name="author" content="Miska Luukkonen">
    <meta charset="ISO-8859-1">
    <title>Muokkaa kysymystä</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/jsp/style/home.css" />
    <link rel="stylesheet" type="text/css" href="/jsp/style/questions.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="/jsp/kuvat/favicon.ico">
    <!-- scripts -->
    <script src="/jsp/js/navbar.js"></script>
</head>

<div class="navbar">
    <ul>
        <li class="logo"> <a class="logoA"><img class="logoImg" src="/jsp/kuvat/voteIcon.png" alt="LOGO" style="height: 100%; width: 2.3vw; float: left; margin-right: 0.5vw; ">LOGO</a></li>
        <div id="menu-items">
            <li><a href="jsp/index.jsp">Etusivu</a></li>
            <li><a href="showcandidates">Kaikki ehdokkaat</a></li>
            <li><a href="showquestions">Vastaa kysymyksiin</a></li>
            <li><a href="jsp/login.jsp">Kirjaudu sisään</a></li>
        </div>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i id="showhide" class="fa fa-bars" onclick="changeclass();"></i>
        </a>
    </ul>
</div>

<body>

    <div class="signUp">
        <h1>Muokkaa kysymystä</h1>
        <form action='/rest/editquestion/editquestion' method='post'>
            <div class="signUp">
                <div class="main">
                    <div class="container" style="text-align: center;">
                        <div class="sign-up-content">
                            <label>Kysymys id:</label>
                            <input type='text' name='kysymysId' value='${requestScope.kysymys.kysymysId}' readonly><br><br>
                            <label>Kysymys:</label><br>
                            <textarea rows="5" cols="80" name='kysymys' style="width:24rem; margin-top: 10px;">${requestScope.kysymys.kysymys}</textarea><br><br>
                            <input type='submit' name='ok' value='Muokkaa' class="button">
                        </div>
                    </div>
                    <br><br><br><br><br><br><br><br><br><br>
                </div>
            </div>
        </form>
    </div>

    <div class="socialMedia">
        <a href="#" class="fa fa-facebook" style="margin-left: 4.5%;"></a>
        <a href="#" class="fa fa-twitter"></a>
        <a href="#" class="fa fa-linkedin"></a>
    </div>

    <div class="footer">
        <h4 class="tekijï¿½">Sivun tekijät Lauri Jokinen, Miska Luukkonen, Juha Kärnä</h4>
        <h4 class="copiright">@ 2022 Lauri Jokinen, Miska Luukkonen, Juha Kärnä All rights reserved</h4>
        <div style="clear: both"></div>
    </div>

</body>

</html>
