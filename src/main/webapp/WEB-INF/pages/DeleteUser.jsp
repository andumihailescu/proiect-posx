<%-- 
    Document   : DeleteUser
    Created on : Jan 16, 2023, 11:58:56 PM
    Author     : Andu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
  
    <h1>${t}</h1>
  <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
              <h1>Are you sure</h1></br>
              <form action="${pageContext.request.contextPath}/DeleteUser" method="POST">
                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Delete</button>
                </form>
                </br>
                <button class="btn btn-lg btn-primary btn-block text-uppercase" onclick="window.location.href='${pageContext.request.contextPath}/Login';">Back</button>
              
                
              
              
            </div>
          </div>
        </div>
   
</t:pageTemple>
