<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/homepage.css" />
    </head>
    <body>
        <header>
        
            <h1>Instagrim. Your world in black and white.</h1>
        </header>
        <%
            LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");                     
        %>
        <nav>
            <ul>
                <li id="welcome">Welcome, <%=lg.getUsername()%>!</li>
                <li><a href="/Instagrim">Home</a></li> 
                <li class="nav"><a href="/Instagrim/Upload">Upload Images</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <li class="nav"><a href="/Instagrim/SampleImages">Sample Images</a></li>
                <li><a href="/Instagrim/Logout">Log Out</a></li>
            </ul>
        </nav>
 
        <article>
            <h1>Your pictures:</h1>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>Sorry, no pictures found.</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();

        %>
        <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/><%

            }
            }
        %>
        </article>
        
        <footer>
            <ul>
                <p id="authors"><i>&copy; Andy Cobley / Craig Robertson</i></p>
            </ul>
        </footer>
    </body>
</html>
