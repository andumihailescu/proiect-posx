<%-- 
    Document   : AddPhoto
    Created on : Jan 12, 2023, 8:45:13 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemple pageTitle="Proiect Pos">
    <!-- 
    <h1>${test}</h1>
    <form method="POST" action="${pageContext.request.contextPath}/AddProduct">
      <label for="Name">Name</label>
    <input type="text" name="name">   
    <label for="Barcode">Barcode</label>
    <input type="text" name="barcode">
   <label for="Price">Price</label>
    <input type="text" name="price">
    <label for="Stock">Stock</label>
    <input type="text" name="stock">
     <label for="Image">Image</label>
    <input type="text" name="image">
    <button type="submit">Send</button>
    </form>
    comment -->
     <form action="submit_product.php" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name"><br>
      <label for="description">Description:</label>
      <textarea id="description" name="description"></textarea><br>
      <label for="price">Price:</label>
      <input type="text" id="price" name="price"><br>
      <label for="image">Image:</label>
      <input type="file" id="image" name="image"><br>
      <input type="submit" value="Add Product">
    </form>
    <style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

form {
    width: 50%;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    box-shadow: 2px 2px 5px #ccc;
}

label {
    display: block;
    margin-bottom: 10px;
}

input[type="text"], textarea {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="file"] {
    margin-bottom: 20px;
}

input[type="submit"] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
</style>
</t:pageTemple>