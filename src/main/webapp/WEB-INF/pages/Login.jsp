<%-- 
    Document   : Login
    Created on : Jan 6, 2023, 7:43:56 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    
    <c:if test="${message != null}">
        <div class="alert alert-warning" role="alert">
            ${message}
        </div>
    </c:if>
    
    <form  method="POST" action="${pageContext.request.contextPath}/Login">
        <h1 >Sign in</h1>

        <div >    
            <div >
                <label for="username" >Username</label>
                <input type="text" id="username" name="j_username"  placeholder="Username" required autofocus>
                <label for="password" >Password</label>
                <input type="password" id="password" name="j_password"  placeholder="Password" required>        
            </div>
        </div>
    </div>

    <div >
        <button  type="submit">Log in</button>
    </div>
    
</form>
     <div >
       <button onclick="window.location.href='${pageContext.request.contextPath}/Sign';">Create cont</button> 
    </div> 
  <!--
    <header>
      <h1>Enhanced POS</h1>
    </header>
    <main>
      <form>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username">
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
        <br>
        <input type="submit" value="Log In">
      </form>
      <p>Don't have an account? <a href="#">Sign up</a></p>
    </main>
    <footer>
      <p>Copyright ©2022 Enhanced POS</p>
    </footer>
    
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

header {
    background-color: #f5f5f5;
    padding: 10px;
    text-align: center;
}

main {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

footer {
    background-color: #f5f5f5;
    text-align: center;
    padding: 10px;
}

/* Form styles */
form {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

form label {
    margin-bottom: 10px;
}

form input {
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 4px;
    border: 1px solid #ccc;
}

form input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}


</style>
      -->
</t:pageTemple>