<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%-- <%
    response.sendRedirect("firstpage.jsp");
    %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 4px;
  height: 600px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
p{
font-size: 1.665em;
}
ul{
font-size: 1.665em;
}
.button {
  background-color: white; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button5 {
  background-color: green;
  color: black;
  border: 2px solid #555555;
}

.button5:hover {
  background-color: blue;
  color: white;
}
.button5 {font-size: 24px;}
.button5 {border-radius: 50%;}
</style>
<title>Welcome To Sparks Bank</title>
</head>
<body>

<div class="row">
  <div class="column" style="background-color:	 #0fad94;">
    
    <p>WELCOME TO</p>
    <p> <b>SPARKS Internet banking.</b></p>
    <p> A completely safe banking portal. </p>
    <p> Transfer your funds with great ease and with complete security!!</p>
    <p> 24 x 7 Money transfer</p>
    <ul>
    <li>Quick</li>
    <li>Convenient</li>
    <li>Safe</li>
    </ul>
   
    
  </div>
  <div class="column" style="background-color:#a2a745;">
    <img src="img2.jpg" alt="BANK" width="500" height="333">
    <img src="img1.jpg" alt="BANK" width="500" height="333">
    
  </div>
<form>
</div>
 			<div class="main-bt"> 
                            <div style="display:flex; justify-content:flex-end; width:100%; padding:0;">
                                <!-- <button formaction="firstpage.jsp">GO</button> -->
                                <button class="button button5" formaction="firstpage.jsp">GO</button>
                            </div>
                        
                    </div>
 </form>
</body>
</html>