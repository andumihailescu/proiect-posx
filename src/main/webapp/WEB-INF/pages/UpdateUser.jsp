<%-- 
    Document   : UpdateUser
    Created on : Jan 16, 2023, 10:23:01 PM
    Author     : Andu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">

        <div class="alert alert-warning" role="alert">
         
          <a href="${pageContext.request.contextPath}/AdminTable">Back to Admin table</a>
        </div>

      <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Update</h5>
               <form method="POST" action="${pageContext.request.contextPath}/UpdateUser">
                  <div class="form-label-group">
                  <input type="text" id="inputUsername" name="name" class="form-control" placeholder="Name" required autofocus>
                  <label for="inputUsername">Name</label>
                </div>
                   <div class="form-label-group">
                  <input type="text" id="inputUsername" name="email" class="form-control" placeholder="Email" required autofocus>
                  <label for="inputUsername">Email</label>
                </div>
                <div class="form-label-group">
                  <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
                  <label for="inputPassword">Password</label>
                </div>
                  <div class="form-label-group">
                  <input type="text" id="inputUsername" name="rol" class="form-control" placeholder="Rol" required autofocus>
                  <label for="inputUsername">Rol</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" onClick="a(0)">Sign in</button>
               
              </form>
              
            </div>
          </div>
        </div>
      </div>
    </div>
 
</t:pageTemple>
