<%-- 
    Document   : View
    Created on : Jan 13, 2023, 4:44:22 PM
    Author     : Denisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    <!--
     <c:if test="${username != null}">
        <div >
            <h1>${username}</h1>
        </div>
    </c:if>
    <div>
        ${List.productPrice}
    </div>
    <div>
         <button onclick="window.location.href='${pageContext.request.contextPath}/View';">Search</button> 
        <button onclick="window.location.href='${pageContext.request.contextPath}/Login';">Login</button>  
    
    </button>

    </div> -->
        
          <div class="container" style="margin:30px">
    <div class="row">
        
      <div class="col-10">
          
        <div class="row row-cols-1 row-cols-md-3 g-3">
<u:forEach var="product" items="${products}" varStatus="status">  
          <div class="col" align="center">

            <div class="card">
              <div class="card-body">
                <h5 class="card-title">${product.productName}</h5>
               
              </div> 
              <img src="${product.image}" class="card-img-top"
                alt="Hollywood Sign on The Hill"/>
              <div class="card-body">
                <h5 class="card-title">${product.productPrice} lei</h5>
               

                 <u:if test="${username != null}"> 
                
                  <button type="submit" class="btn btn-primary btn-rounded" onClick="a(${product.productId})">Adauga in cos</button>
                    
                 </u:if> 
                 
              </div>
            </div>
                
          </div>
</u:forEach> 

        </div>
     
      </div>

      <div class="col" align="center">

        <div class="input-group">
          <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
            aria-describedby="search-addon" />
          <button type="button" class="btn btn-outline-primary">search</button>
        </div>
       
        <div style="margin:30px">
         <u:if test="${username == null}">   
          <button type="button" class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/Login';">Account</button>
            </u:if>
            <u:if test="${username != null}"> 
               
          <button type="button" class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/ShoppingCart';">Buy</button>
            </u:if>
        </div>

      </div>
    </div>

  </div>
  
        
        <script>
          function a(v){

       var xhr = new XMLHttpRequest();
        xhr.open("POST", "${pageContext.request.contextPath}/ShoppingCart", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Handle the response here
                var response = xhr.responseText;
                console.log(response);
            }
        };
        var name = v;
        var age = "zzz";
        xhr.send("name=" + name + "&age=" + age);
    }
         
            
            </script>
        <style>
         .card-img-top {
width: 100%;
height: 40vh;
object-fit: cover;
}
        </style>         
            
        
</t:pageTemple>