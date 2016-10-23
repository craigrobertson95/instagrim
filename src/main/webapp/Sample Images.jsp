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
                        if (lg.getloggedin())
                        {
                %>
                <p>Welcome, <%=lg.getUsername()%>.</p>
                <li><a href="/Instagrim/Upload">Upload Images</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <li><a href="/Instagrim/Upload">Log Out</a></li>
                <%
                        }
                    }
                    else
                        {
                %>
                <li><a href="/Instagrim/Register">Register</a></li>
                <li><a href="/Instagrim/Login">Login</a></li>
                
                
                <%
                        }
                %>
                 
            </ul>
        </nav>
        <img src="http://i.imgur.com/LhMQQA0.png" alt="Image not found."/>
        <img src="http://i.imgur.com/RDQ30rP.jpg" alt="Image not found."/>
        <img src="http://i.imgur.com/dQuptX6.jpg" alt="Image not found."/>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <p id="authors"><i>&copy; Andy Cobley / Craig Robertson</i></p>
            </ul>
        </footer>
    </body>
</html>