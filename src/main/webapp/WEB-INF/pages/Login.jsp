<%-- 
    Document   : Login
    Created on : Jan 6, 2023, 7:43:56 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    <!-- comment 
  
    
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
-->
  <c:if test="${message != null}">
        <div class="alert alert-warning" role="alert">
            ${message}
        </div>
    </c:if>

 <div class="container">
     
<form  method="POST" action="${pageContext.request.contextPath}/Login">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">POS Login</h5>
              
                <div class="form-label-group">
                  <input type="text" id="inputUsername" name="j_username" class="form-control" placeholder="Username" required autofocus>
                  <label for="inputUsername">Username</label>
                </div>
                <div class="form-label-group">
                  <input type="password" id="inputPassword" name="j_password" class="form-control" placeholder="Password" required>
                  <label for="inputPassword">Password</label>
                </div>
                
                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Log in</button>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" onclick="window.location.href='${pageContext.request.contextPath}/Sign';">Register</button>
                <hr class="my-4">
                
              
              
            </div>
          </div>
        </div>
      </div> 
</form>
    </div>
   
</t:pageTemple>