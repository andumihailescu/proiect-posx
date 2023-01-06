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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Dragos
 */
@Entity
@Table(name = "USERS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Users.findAll", query = "SELECT u FROM Users u"),
    @NamedQuery(name = "Users.findByUserId", query = "SELECT u FROM Users u WHERE u.userId = :userId"),
    @NamedQuery(name = "Users.findByUserName", query = "SELECT u FROM Users u WHERE u.userName = :userName"),
    @NamedQuery(name = "Users.findByUserEmail", query = "SELECT u FROM Users u WHERE u.userEmail = :userEmail"),
    @NamedQuery(name = "Users.findByUserRol", query = "SELECT u FROM Users u WHERE u.userRol = :userRol"),
    @NamedQuery(name = "Users.findBySendRequest", query = "SELECT u FROM Users u WHERE u.sendRequest = :sendRequest"),
    @NamedQuery(name = "Users.findByGenerateReports", query = "SELECT u FROM Users u WHERE u.generateReports = :generateReports"),
    @NamedQuery(name = "Users.findByApproveRequests", query = "SELECT u FROM Users u WHERE u.approveRequests = :approveRequests")})
public class Users implements Serializable {

    @Size(max = 255)
    @Column(name = "USER_NAME")
    private String userName;
    @Size(max = 255)
    @Column(name = "USER_EMAIL")
    private String userEmail;
    @Size(max = 255)
    @Column(name = "USER_ROL")
    private String userRol;
    @Size(max = 255)
    @Column(name = "SEND_REQUEST")
    private String sendRequest;
    @Size(max = 255)
    @Column(name = "GENERATE_REPORTS")
    private String generateReports;
    @Size(max = 255)
    @Column(name = "APPROVE_REQUESTS")
    private String approveRequests;

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "USER_ID")
    private Integer userId;

    public Users() {
    }

    public Users(Integer userId) {
        this.userId = userId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserRol() {
        return userRol;
    }

    public void setUserRol(String userRol) {
        this.userRol = userRol;
    }

    public String getSendRequest() {
        return sendRequest;
    }

    public void setSendRequest(String sendRequest) {
        this.sendRequest = sendRequest;
    }

    public String getGenerateReports() {
        return generateReports;
    }

    public void setGenerateReports(String generateReports) {
        this.generateReports = generateReports;
    }

    public String getApproveRequests() {
        return approveRequests;
    }

    public void setApproveRequests(String approveRequests) {
        this.approveRequests = approveRequests;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userId != null ? userId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Users)) {
            return false;
        }
        Users other = (Users) object;
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Users[ userId=" + userId + " ]";
    }


    
}
