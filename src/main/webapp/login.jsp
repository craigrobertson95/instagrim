<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="homepage.css" />

    </head>
    <body>
        <header>
        <h1>Instagrim. Your world in black and white.</h1>
        </header>
        
  
        
        
        <article>
            <h3>Login</h3>
            
            <form method="POST"  action="Login">
                <ul>
                    <li>Username <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <br/>
                <input type="submit" value="Login" > 
            </form>

        </article>
        <nav>
            <ul>
                <li><a href="/Instagrim">Home</a></li>
                <li><a href="/Instagrim/Register">Register</a></li>
                <li class="nav"><a href="/Instagrim/SampleImages">Sample Images</a></li>
            </ul>
        </nav>
        <footer>
            <ul>
                
                <p id="authors"><i>&copy; Andy Cobley / Craig Robertson</i></p>
            </ul>
        </footer>
    </body>
</html>
