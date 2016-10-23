<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="styles.css" />
    </head>
    <body>
        <h1>Instagrim. Your world in black and white.</h1>
        
        <nav>
            <ul>
                <%
                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");                     
                %>
                <li id="welcome">Welcome, <%=lg.getUsername()%>!</li>
                <li><a href="/Instagrim">Home</a></li> 
                <li><a href="/Instagrim/Upload">Upload Images</a></li>
                <%
                    String Username = lg.getUsername();
                %>
                <li><a href="/Instagrim/Images/<%=Username%>">Your Images</a></li>
                <li class="nav"><a href="">Sample Images</a></li>
                <li><a href="/Instagrim/Logout">Log Out</a></li>
            </ul>
        </nav>
        <article>
            <h1>Upload file:</h1>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file! 
            </form><br>
            
        </article>
        <img id="panda" src="http://i.imgur.com/Se26nzR.png" alt="File not found"/>
        <footer>
            <ul>
                
                <p id="authors"><i>&copy; Andy Cobley / Craig Robertson</i></p>
            </ul>
        </footer>
    </body>
</html>
