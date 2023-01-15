<%-- 
    Document   : Sigin
    Created on : Jan 13, 2023, 6:23:43 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    <!-- comment 
    <form method="POST" action="${pageContext.request.contextPath}/Sign">
    
         <div >    
            <div >
                 <label for="username" >Name</label>
                <input type="text" id="username" name="name"  placeholder="Username" required autofocus>
                <label for="email" >Email</label>
                <input type="text" id="username" name="email"  placeholder="Username" required autofocus>
                <label for="password" >Password</label>
                <input type="password" id="password" name="password"  placeholder="Password" required>        
            </div>
        </div>
          <div >
        <button  type="submit">Create cont</button>
    </div>
    </div>
        
    </form>
 -->
  <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">POS Login</h5>
               <form method="POST" action="${pageContext.request.contextPath}/Sign">
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

                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                <hr class="my-4">
                
              </form>
              
            </div>
          </div>
        </div>
      </div>
    </div>
</t:pageTemple>