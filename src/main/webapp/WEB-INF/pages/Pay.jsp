<%-- 
    Document   : Pay
    Created on : Jan 15, 2023, 1:27:48 AM
    Author     : Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">

    <p class="p"><img src="https://ing.ro/dam/ingro/lp/complet-try4free/ing-identifier.svg" width="69" height="69">Payment Methods</p>
    
        <div class="d-flex flex-row justify-content-center">
            <form method="POST" action="${pageContext.request.contextPath}/CashPage">  
            <button type="submit" class="btn btn-outline-success btn-block">
          
           <div class="d-flex flex-column-reverse justify-content-center"> Cash(RON)<div></div><img src="https://upload.wikimedia.org/wikipedia/commons/b/b4/1_leu._Romania%2C_2005_a.jpg" width="200" height="118"></div>
          
            </button> 
          </form>
            
            <div >
               <form method="POST" action="${pageContext.request.contextPath}/CardPage">   
           <button type="submit" class="btn btn-outline-warning btn-block2">
           
           <div class="d-flex flex-column-reverse justify-content-center">Card(VISA/MasterCard)<div></div><img src="https://www.idevice.ro/wp-content/uploads/2020/01/ING-Bank-card.jpg" width="200" height="118">
           </div>
           </button>
               </form>
            </div>
        </div>
        <p>&nbsp;<br></p>
        <div class="d-flex flex-row justify-content-center"><button type="button" class="btn btn-outline-danger btn-lg">Cancel Payment</button> </div>

 <style>
        .btn-block{
            padding: 150px;
            justify-content: center;
            background-color:rgba(77, 255, 0, 0.267); 
            font-size: 25px;
            
            
        }
        .btn-block2{
            padding: 150px;
            justify-content: center;
            background-color: rgba(255, 162, 0, 0.344);
            font-size: 25px;
            
        }

        .btn-lg{
            background-color: rgba(255, 0, 0, 0.299);
        }


        .p{
            text-align: center;
            color: orange;
            font-style:italic;
            font-size: 69px;

            
        }
    </style>
</t:pageTemple>
