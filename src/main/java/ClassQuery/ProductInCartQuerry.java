/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ClassQuery;

import Class.ProductInCartDetails;
import javax.ejb.Stateless;

import entity.Productincart;
import entity.Users;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJBException;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
/**
 *
 * @author Andu
 */
@Stateless
public class ProductInCartQuerry {
    @PersistenceContext
    private EntityManager em;
    
    public List<ProductInCartDetails> getAllProductsInCart() {
        
        try {
            Query query = em.createQuery("SELECT p FROM Productincart p");
            List<Productincart> productsInCart = (List<Productincart>) query.getResultList();
            return copyProductInCartToDetails(productsInCart);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
    
    private List<ProductInCartDetails> copyProductInCartToDetails(List<Productincart> productsInCart) {
        List<ProductInCartDetails> detailsList = new ArrayList<>();
        for (Productincart productInCart : productsInCart) {
            ProductInCartDetails productInCartDetails = new ProductInCartDetails(productInCart.getId(),
                    productInCart.getProductIncardbarcode());
            detailsList.add(productInCartDetails);
        }
        return detailsList;
    }
    
    public void createProductInCart(Integer productInCartBarCode, Integer productInCartQuantity,String loggedInUser) {
        
        Productincart productInCart = new Productincart();
        productInCart.setProductIncardbarcode(productInCartBarCode);
        ;
        
         try {
            Query query = em.createQuery("SELECT u FROM User u WHERE u.username='" + loggedInUser+"'");
            Users users = (Users) query.getSingleResult();
             productInCart.setId(productInCartBarCode);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
        

        em.persist(productInCart);
    }

    public void updateProductInCart(Integer productInCartId, Integer productInCartQuantity) {
        
        Productincart productInCart = em.find(Productincart.class, productInCartId);
      
    }

    public void deleteProductInCart(Integer productInCartId) {
        
        Productincart productInCart = em.find(Productincart.class, productInCartId);
        em.remove(productInCart);
    }

    public ProductInCartDetails findById(Integer productInCartId) {
        Productincart productInCart = em.find(Productincart.class, productInCartId);
        return new ProductInCartDetails(productInCart.getId(), productInCart.getProductIncardbarcode());
    }

    public ProductInCartDetails findByBarCode(Integer productInCartBarCode) {
        try {
            Query query = em.createQuery("SELECT p FROM ProductInCart p WHERE p.productInCartBarCode=" + productInCartBarCode);
            if (query.getResultList().size()==1) {
                Productincart productInCart = (Productincart) query.getSingleResult();
                return new ProductInCartDetails(productInCart.getId(), productInCart.getProductIncardbarcode());
            } else {
                return null;
            }
        } catch (Exception ex) {
            throw new EJBException(ex);
        }

    }
}
