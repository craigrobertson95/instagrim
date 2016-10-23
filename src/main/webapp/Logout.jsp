<%-- 
    Document   : Logout
    Created on : 23-Oct-2016, 19:29:59
    Author     : craigrobertson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <header>
            <h1>Instagrim. Your world in black and white.</h1>
        </header>
        <article>
            <h1>You have been successfully logged out.</h1>
            <%
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                lg.setloggedout();
            %>     
            
            <nav>
                <ul>
                    <li><a href="/Instagrim">Back to Home</a></li>
                </ul>
            </nav>
    </body>
</html>
