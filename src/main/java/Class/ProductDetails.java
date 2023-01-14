/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

/**
 *
 * @author Dragos
 */
public class ProductDetails {
    
    int productId;
    String productBarcode;
    String priductName;
    int productPrice;
    int productStock;
String image;

    public ProductDetails(int productId, String productBarcode, String priductName, int productPrice, int productStock, String image) {
        this.productId = productId;
        this.productBarcode = productBarcode;
        this.priductName = priductName;
        this.productPrice = productPrice;
        this.productStock = productStock;
        this.image = image;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductBarcode() {
        return productBarcode;
    }

    public void setProductBarcode(String productBarcode) {
        this.productBarcode = productBarcode;
    }

    public String getPriductName() {
        return priductName;
    }

    public void setPriductName(String priductName) {
        this.priductName = priductName;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getProductStock() {
        return productStock;
    }

    public void setProductStock(int productStock) {
        this.productStock = productStock;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
   
    
}
