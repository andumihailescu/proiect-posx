<%-- 
    Document   : View
    Created on : Jan 13, 2023, 4:44:22 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    
    <div>
        ${List.productPrice}
    </div>
    <div>
         <button onclick="window.location.href='${pageContext.request.contextPath}/View';">Search</button> 
        <button onclick="window.location.href='${pageContext.request.contextPath}/Login';">Login</button>  
    
    </button>
    </div>
</t:pageTemple>