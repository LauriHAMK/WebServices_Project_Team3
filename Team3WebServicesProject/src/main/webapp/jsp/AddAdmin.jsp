<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Add new Admin</title>
<script>
function sendData(){
	//Create a new Javascript object
	var admin=new Object();
	admin.username=document.getElementById("username").value;
	admin.password=document.getElementById("password").value;
	
	var jsonAdmin=JSON.stringify(admin);
	var xhttp = new XMLHttpRequest();
	
	xhttp.onreadystatechange = function() {
	  if (this.readyState == 4 && this.status == 200) {
	   document.getElementById("responseView").innerHTML = this.responseText;
	   var returned=JSON.parse(this.responseText);
	   document.getElementById("inparts").innerHTML="ID="+returned.id+" Username="+returned.username+" Password="+returned.password;
	  }
	};
	
	xhttp.open("POST","./rest/adminservice/addadmin",true);
	xhttp.setRequestHeader("Content-type","application/json");
	xhttp.send(jsonAdmin);
 
	
}
</script>
</head>

<body>
<h2>Fill in - this form uses AJAX</h2>
<form action="#" method='post' onsubmit='return false;'>
Username: <input id='username' type='text' name='username' value='' placeholder='New Username'><br>
Password: <input id='password' type='password' name='password' value='' placeholder='New Password'><br>
<input type='button' name='ok' value='Send' onclick='sendData();'><br>
</form>
<p id='responseView'>The response will be shown here!
</p>
<p id='inparts'>The response in parts will be shown here!
</p>
<h2>Fill in - this form adds admin</h2>
<form action="../rest/adminservice/addadmin" method='post'>
Username: <input id='username' type='text' name='username' value='' placeholder='New Username'><br>
Password: <input id='password' type='password' name='password' value='' placeholder='New Password'><br>
<input type='submit' name='ok' value='Send'><br>
</form>
</body>
</html>