/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;

/**
 *
 * @author Dragos
 */
public class UserDetaly {
  int userId;
String userName;
String userEmail;
String userRol;
String sendRequest;
String generateReports;
String aproveRequests;

    public UserDetaly(int userId, String userName, String userEmail, String userRol, String sendRequest, String generateReports, String aproveRequests) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userRol = userRol;
        this.sendRequest = sendRequest;
        this.generateReports = generateReports;
        this.aproveRequests = aproveRequests;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
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

    public String getAproveRequests() {
        return aproveRequests;
    }

    public void setAproveRequests(String aproveRequests) {
        this.aproveRequests = aproveRequests;
    }


}
