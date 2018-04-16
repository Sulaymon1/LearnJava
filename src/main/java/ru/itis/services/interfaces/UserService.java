package ru.itis.services.interfaces;

import ru.itis.models.User;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
public interface UserService {
    void addNewUser(User user);

    User getUser(Long id);

    void updateUser(User user);

    void updateUserPass(User user);
}
