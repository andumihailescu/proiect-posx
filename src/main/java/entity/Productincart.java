/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Dragos
 */
@Entity
@Table(name = "PRODUCTINCART")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Productincart.findAll", query = "SELECT p FROM Productincart p"),
    @NamedQuery(name = "Productincart.findById", query = "SELECT p FROM Productincart p WHERE p.id = :id"),
    @NamedQuery(name = "Productincart.findByProductIncardbarcode", query = "SELECT p FROM Productincart p WHERE p.productIncardbarcode = :productIncardbarcode"),
    @NamedQuery(name = "Productincart.findByProductIncartquantity", query = "SELECT p FROM Productincart p WHERE p.productIncartquantity = :productIncartquantity")})
public class Productincart implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @Column(name = "PRODUCT_INCARDBARCODE")
    private Integer productIncardbarcode;
    @Column(name = "PRODUCT_INCARTQUANTITY")
    private Integer productIncartquantity;

    public Productincart() {
    }

    public Productincart(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductIncardbarcode() {
        return productIncardbarcode;
    }

    public void setProductIncardbarcode(Integer productIncardbarcode) {
        this.productIncardbarcode = productIncardbarcode;
    }

    public Integer getProductIncartquantity() {
        return productIncartquantity;
    }

    public void setProductIncartquantity(Integer productIncartquantity) {
        this.productIncartquantity = productIncartquantity;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Productincart)) {
            return false;
        }
        Productincart other = (Productincart) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Productincart[ id=" + id + " ]";
    }
    
}
