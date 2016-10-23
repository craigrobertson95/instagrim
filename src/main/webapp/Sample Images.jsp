<%-- 
    Document   : Sample Images
    Created on : 23-Oct-2016, 13:11:59
    Author     : craigrobertson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="homepage.css" />
        <title>Sample Images</title>
    </head>
    <body>
        <header>
            <h1>Instagrim. Your world in black and white.</h1>
        </header>
        <nav>
            <ul>
                
                <%
                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                    if (lg != null)
                    {
                        String Username = lg.getUsername();
                        if (lg.getloggedin() == true)
                        {
                %>
                <li id="welcome">Welcome, <%=lg.getUsername()%>!</li>
                <li><a href="/Instagrim">Home</a></li> 
                <li><a href="/Instagrim/Upload">Upload Images</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <li class="nav"><a href="/Instagrim/SampleImages">Sample Images</a></li>
                <li><a href="/Instagrim/Logout">Log Out</a></li>
                <%
                        }
                        else
                        {%>
                            <li><a href="/Instagrim">Home</a></li> 
                            <li><a href="/Instagrim/Login">Login</a></li>
                            <li><a href="/Instagrim/Register">Register</a></li>
                            <li class="nav"><a href="/Instagrim/SampleImages">Sample Images</a></li><%
                            
                        }
                    }
                    else
                        {
                %>
                <li><a href="/Instagrim">Home</a></li> 
                <li><a href="/Instagrim/Login">Login</a></li>
                <li><a href="/Instagrim/Register">Register</a></li>
                <li class="nav"><a href="/Instagrim/SampleImages">Sample Images</a></li>
                
                
                <%
                        }
                %>
                 
            </ul>
        </nav>
        <article>
        <h1>Sample images:</h1> <br>
        <img src="http://i.imgur.com/LhMQQA0.png" alt="Image not found." style="width:500px; height: 500px;"/>
        <img src="http://i.imgur.com/RDQ30rP.jpg" alt="Image not found." style="width:500px; height: 500px;"/>
        <img src="http://i.imgur.com/dQuptX6.jpg" alt="Image not found." style="width:500px; height: 500px;"/>
        
        </article>
        <footer>
            <ul>   
                <p id="authors"><i>&copy; Andy Cobley / Craig Robertson</i></p>
            </ul>
        </footer>
    </body>
</html>
