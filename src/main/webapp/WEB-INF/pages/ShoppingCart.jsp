<%-- 
    Document   : Shopping Cart
    Created on : Jan 14, 2023, 8:21:20 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    

        <section class="h-100 h-custom" style="background-color: #d2c9ff;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12">
              <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                <div class="card-body p-0">
                  
                  <div class="row g-0">
                    <div class="col-lg-8">
                      <div class="p-5">

                        <div class="d-flex justify-content-between align-items-center mb-5">
                          <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                        </div>
   <form action="${pageContext.request.contextPath}/Pay" method="POST">
                        <hr class="my-4">
      <c:forEach var="tests" items="${ProductLists}" varStatus="status">  
                        <div class="row mb-4 d-flex justify-content-between align-items-center">
                          <div class="col-md-2 col-lg-2 col-xl-2">
                            <img
                              src="${tests.image}"
                              class="img-fluid rounded-3" alt="Cotton T-shirt">
                          </div>

                          <div class="col-md-3 col-lg-3 col-xl-3">
                          <h6 class="text-black mb-0">${tests.productName}</h6>
                          </div>

                         

                          <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                            <h6 class="mb-0" class="price">${tests.productPrice} lei</h6>
                          </div>

                          <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                            <a href="#!" class="text-muted"><i class="fas fa-times"></i></a>
                          </div>

                        </div>
      </c:forEach>
                        <hr class="my-4">
      
                        <div class="pt-5">
                          <h6 class="mb-0"><a href="${pageContext.request.contextPath}/View" class="text-body"><i
                                class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a></h6>
                        </div>
                        
                      </div>
                    </div>
                    <div class="col-lg-4 bg-grey">
                      <div class="p-5">
                        <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
           
      
             
                        <hr class="my-4">
      
                        <div class="d-flex justify-content-between mb-5">
                          <h5 class="text-uppercase" class="total">Total price</h5>
                          <h5 class="total">${Price} lei</h5>
                        </div>
                       
                        <button type="submit" class="btn btn-dark btn-block btn-lg"
                          data-mdb-ripple-color="dark">Buy</button>
                        </form>
                              
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
                        
 
</t:pageTemple>