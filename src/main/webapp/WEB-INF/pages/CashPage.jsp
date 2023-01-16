<%-- 
    Document   : CashPage
    Created on : Jan 16, 2023, 11:42:44 AM
    Author     : Denisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    <c:if test="${message == Price}">
        <div class="alert alert-warning" role="alert">
          <h1>Purchase succes</h1>  
          <a href="${pageContext.request.contextPath}/View">Back to shop</a>
        </div>
    </c:if>
   <c:if test="${message != Price}">
    <form  method="POST" action="${pageContext.request.contextPath}/CashPage">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body">
              <h5 class="card-title text-center">Pay with cash</h5>
              
                <div class="form-label-group">
                  <input type="number" id="inputUsername" name="amount" class="form-control" placeholder="amount" required autofocus>
                  <label for="inputUsername">Amount</label>
                </div>
                           
                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Page</button>
                
              
              
            </div>
          </div>
        </div>
      </div> 
</form>
 </c:if>
</t:pageTemple>
