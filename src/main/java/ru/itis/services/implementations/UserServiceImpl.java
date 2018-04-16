package ru.itis.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.itis.models.User;
import ru.itis.repositories.UserRepository;
import ru.itis.services.interfaces.UserService;

import java.util.Optional;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();


    @Override
    public void addNewUser(User user) {
        String encode = passwordEncoder.encode(user.getHashPassword());
        user.setHashPassword(encode);
        userRepository.save(user);
    }

    @Override
    public User getUser(Long id) {
        return null;
    }

    @Override
    public void updateUser(User user) {
        Optional<User> userOptional = userRepository.findFirstByEmail(user.getEmail());
        if (userOptional.isPresent()){
            User userOld = userOptional.get();
            userOld.setAddress(user.getAddress());
            userOld.setPhoneNumber(user.getPhoneNumber());
            userOld.setGitRepo(user.getGitRepo());
            userRepository.save(userOld);
        }
    }

    @Override
    public void updateUserPass(User user) {
        userRepository.save(user);
    }
}
