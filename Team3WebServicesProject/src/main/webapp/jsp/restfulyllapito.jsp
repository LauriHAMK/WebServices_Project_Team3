<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="app.*" %>
<!DOCTYPE html>
<html>
<head>
<meta name="author" content="Lauri Jokinen">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

    <table>
    
     <tr>
        <td><a href='./index.jsp'>Home</a></td>
        </tr>
        <tr>
        <td><a href="/rest/addquestion/addnewquestionpage">Lis�� kysymys</a>
        </tr>
        <tr>
        <td><a href="/rest/deletequestion/getquestionstodelete">Poista kysymyksi�</a></td>
        </tr>
        <tr>
        <td><a href="/rest/editquestion/getquestionstoedit">Muokkaa kysymyksi�</a></td>
      </tr>
      


      
    </table>
  </body>
  
</body>
</html>