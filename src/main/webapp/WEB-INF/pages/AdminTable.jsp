<%-- 
    Document   : AdminTable
    Created on : Jan 15, 2023, 9:49:19 PM
    Author     : Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">

  <table class="table">
            <thead class="head">
              <tr>
                <th scope="col">#</th>
                <th scope="col">user_name</th>
                <th scope="col">user_email</th>
                <th scope="col">user_rol</th>
                <th scope="col">user_password</th>
                <th scope="col">send_request</th>
                <th scope="col">generate_reports</th>
                <th scope="col">approve_requests</th>
                <th scope="col"></th>
              </tr>
            </thead>
            <tbody>
       <c:forEach var="actor" items="${actors}" varStatus="status">  
              <tr>     
                <th scope="row">${actor.userId}</th>
                <td>${actor.userName}</td>
                <td>${actor.userEmail}</td>
                <td>${actor.userRol}</td>
                <td>${actor.password}</td>
                <td>${actor.sendRequest}</td>
                <td>${actor.generateReports}</td>         
                <td>${actor.aproveRequests}</td>
     
                <td>
                  <form method="POST" action="${pageContext.request.contextPath}/UpdateUser">
                        <div class="d-flex flex-row"><button type="submit" class="btn btn-success" name="buton" onClick="a(${actor.userId})">Update user</button></div>
                  </form>
                   </td> 
                   <td>
                  
                  <div>
                      <form method="POST" action="${pageContext.request.contextPath}/DeleteUser">
                      <button type="submit" class="btn btn-danger" onClick="a(${actor.userId})">Delete User</button>
                      </form>
                  </div>
                </td> 
                
              </tr>
</c:forEach>
           
            </tbody>
          </table>
         <!-- <div class="d-flex flex-row justify-content-center"><button type="button" class="btn btn-primary">Insert user</button></div>-->
     <button class="btn btn-lg btn-primary btn-block text-uppercase"onclick="window.location.href='${pageContext.request.contextPath}/AddProduct';">AddProduct</button>  
  <style>
            .table{
                border-color: rgb(0, 132, 255);
                background-color: rgb(184, 249, 249);
            }

            .head{
                color:black;
                background-color: rgb(255, 242, 223);
            }
            
            .insert{
                color: greenyellow;
                border-color: green;
            }

        </style>
        <h1>${t}</h1>
        
     
        <script>
          function a(v){

       var xhr = new XMLHttpRequest();
        xhr.open("POST", "${pageContext.request.contextPath}/AdminTable", true);
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
        location.reload();
    }
         
            
            </script>
</t:pageTemple>