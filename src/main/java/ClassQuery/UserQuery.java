/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ClassQuery;

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
import javax.xml.registry.infomodel.User;

/**
 *
 * @author Andu
 */
@Stateless
public class UserQuery {
    
     private static final Logger LOG = Logger.getLogger(UserQuery.class.getName());

    @PersistenceContext
    private EntityManager em;
    
      public List<UserDetails> getAllUsers() {
        LOG.info("getAllUsers");
        try {
            Query query;
            query = em.createQuery("SELECT u FROM Users u");
            List<Users> users = (List<Users>) query.getResultList();
            return copyUsersToDetails(users);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
        private List<UserDetails> copyUsersToDetails(List<Users> users) {
        List<UserDetails> detailsList = new ArrayList<>();
        for (Users user : users) {
            UserDetails userDetails = new UserDetails(user.getUserId(),
            user.getUserName(),
                    user.getUserEmail(),
                    user.getUserRol(),
                    user.getSendRequest(),
                    user.getGenerateReports(),
                    user.getApproveRequests(),
                    user.getUserPassword()
            );
            detailsList.add(userDetails);
        }
        return detailsList;
    }
        public void createUsers(Integer id,String name,String email,String password){
  
            Users users=new Users();
            users.setUserName(name);
            users.setUserEmail(email);
            users.setUserPassword(password);
            users.setUserRol("User");
            users.setUserId(id);
            
            em.persist(users);
         }
        public void updateUser(Integer userId, String userName, String email,String password, String userRol){
        Users users = em.find(Users.class, userId);
        users.setUserName(userName);
        users.setUserEmail(email);
        users.setUserPassword(password);
        users.setUserRol(userRol);
    }
    
    public void deleteUsersByIds(Integer userIds) {
      
            Users users = em.find(Users.class, userIds);
            em.remove(users);
        
    }
    
}
