/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

/**
 *
 * @author Andu
 */
public class ProductInCartDetails {
    
     private Integer id;
    private Integer productInCartBarCode;

    public ProductInCartDetails(Integer id, Integer productInCartBarCode) {
        this.id = id;
        this.productInCartBarCode = productInCartBarCode;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductInCartBarCode() {
        return productInCartBarCode;
    }

    public void setProductInCartBarCode(Integer productInCartBarCode) {
        this.productInCartBarCode = productInCartBarCode;
    }

}
