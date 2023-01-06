/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ClassQuery;

import Class.UserDetaly;
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
 * @author Dragos
 */
@Stateless
public class UserQuery {
    
     private static final Logger LOG = Logger.getLogger(UserQuery.class.getName());

    @PersistenceContext
    private EntityManager em;
    
      public List<UserDetaly> getAllUsers() {
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
        private List<UserDetaly> copyUsersToDetails(List<Users> users) {
        List<UserDetaly> detailsList = new ArrayList<>();
        for (Users user : users) {
            UserDetaly userDetails = new UserDetaly(user.getUserId(),
            user.getUserName(),
                    user.getUserEmail(),
                    user.getUserRol(),
                    user.getSendRequest(),
                    user.getGenerateReports(),
                    user.getApproveRequests()
            );
            detailsList.add(userDetails);
        }
        return detailsList;
    }
}
