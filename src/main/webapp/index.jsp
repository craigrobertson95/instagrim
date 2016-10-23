<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="homepage.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
            <h1>Instagrim. Your world in black and white.</h1>
        </header>
        <nav>
            
                <%
                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                    if (lg != null)
                    {
                        String Username = lg.getUsername();
                        if (lg.getloggedin() == true)
                        {
                %>
                <h1>Welcome, <%=lg.getUsername()%>!</h1>
                <ul>
                <li><a href="/Instagrim">Home</a></li> 
                <li><a href="/Instagrim/Upload">Upload Images</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <li><a href="/Instagrim/SampleImages">Sample Images</a></li>
                <li><a href="/Instagrim/Logout">Log Out</a></li>
                
                </ul>
                    
                   
                <%
                        }
                        else
                        {%>
                            <ul>
                            <li><a href="/Instagrim">Home</a></li> 
                            <li><a href="/Instagrim/Register">Register</a></li>
                            <li><a href="/Instagrim/Login">Login</a></li>
                            <li class="nav"><a href="/Instagrim/SampleImages">Sample Images</a></li>
                            </ul><%
                        }
                    }
                    else
                        {
                %>
                <ul>
                <li><a href="/Instagrim">Home</a></li> 
                <li><a href="/Instagrim/Register">Register</a></li>
                <li><a href="/Instagrim/Login">Login</a></li>
                <li class="nav"><a href="/Instagrim/SampleImages">Sample Images</a></li>
                </ul>
                <%
                        }
                %>
                 
            </ul>
        </nav>
        <footer>
            <ul>               
                <p id="authors"><i>&copy; Andy Cobley / Craig Robertson</i></p>
            </ul>
        </footer>
    </body>
</html>
