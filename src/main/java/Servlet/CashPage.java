/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Class.ProductDetails;
import ClassQuery.ProductQuery;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dragos
 */
@WebServlet(name = "CashPage", urlPatterns = {"/CashPage"})
public class CashPage extends HttpServlet {
@Inject
private ProductQuery productQuery;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             
     HttpSession session = request.getSession();
    
          
      
         
            request.getRequestDispatcher("/WEB-INF/pages/CashPage.jsp").forward(request, response); 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/CashPage.jsp").forward(request, response); 
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
     //  int val=Integer.valueOf(introducePrice);
  
           //request.setAttribute("message","mere"); 
         HttpSession session = request.getSession();
     
       try{
           int price=(int) session.getAttribute("Price");
          String introducePrice=request.getParameter("amount");
          request.setAttribute("message",introducePrice);   
          List<ProductDetails>s=(List<ProductDetails>) session.getAttribute("ProductLists");
          
        try{
         for(int i=0;i<=s.size();i++){

            productQuery.updateProduct(s.get(i).getProductId(),s.get(i).getProductStock()-1);
          
          }
        }catch(IndexOutOfBoundsException e){}
  
       }catch(NullPointerException e){
   
       }
        request.getRequestDispatcher("/WEB-INF/pages/CashPage.jsp").forward(request, response); 
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
