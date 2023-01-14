<%-- 
    Document   : Sigin
    Created on : Jan 13, 2023, 6:23:43 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
 
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
 
</t:pageTemple>