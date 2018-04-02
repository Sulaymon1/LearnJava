package ru.itis.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.itis.models.User;
import ru.itis.repositories.UserRepository;
import ru.itis.services.interfaces.UserService;

/**
 * Created by Sulaymon on 18.03.2018.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Override
    public void registerNewUser(User user) {
        String encodedPass = passwordEncoder.encode(user.getHashPassword());
        user.setHashPassword(encodedPass);
        userRepository.save(user);
    }
}
