/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ClassQuery;

import Class.ProductDetails;
import Class.UserDetails;
import entity.Category;
import entity.Product;
import entity.Users;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Andu
 */
@Stateless
public class ProductQuery {
  
     private static final Logger LOG = Logger.getLogger(ProductQuery.class.getName());

    @PersistenceContext
    private EntityManager em;
    
    
    
      public List<ProductDetails> getAllProduct() {
        LOG.info("getAllUsers");
        try {
            Query query;
            query = em.createQuery("SELECT p FROM Product p");
            List<Product> users = (List<Product>) query.getResultList();
            return copyUsersToDetails(users);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
      public List<ProductDetails> getAllProductFromId(String id) {
        LOG.info("getAllUsers");
        try {
            Query query;
            query = em.createQuery("SELECT p FROM Product p WHERE p.productId="+id+"");
            List<Product> users = (List<Product>) query.getResultList();
            return copyUsersToDetails(users);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
        private List<ProductDetails> copyUsersToDetails(List<Product> produc) {
        List<ProductDetails> detailsList = new ArrayList<>();
        for (Product product : produc) {
            ProductDetails userDetails = new ProductDetails( 
                 product.getProductId(),
                product.getProductBarcode(),
                    product.getProductName(),
                    product.getProductPrice(),
                    product.getProductStock(),
                    product.getProductImage()
            );
            detailsList.add(userDetails);
        }
        return detailsList;
    }
         public void createProduct(Integer id,String barcode,String name,Integer price,Integer stock,String image){
            Product product = new Product(); 
            product.setProductBarcode(barcode);
            product.setProductName(name);
            product.setProductPrice(price);
            product.setProductStock(stock);
            product.setProductImage(image);
            
            Category category = em.find(Category.class, id);
            product.setProductId(id);
            
            em.persist(product);
         }
            public void updateProduct(Integer productId,Integer productStock){
        Product product = em.find(Product.class, productId);
        product.setProductStock(productStock);
      
    }
    
}
