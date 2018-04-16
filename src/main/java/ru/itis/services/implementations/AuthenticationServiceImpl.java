package ru.itis.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import ru.itis.models.User;
import ru.itis.repositories.UserRepository;
import ru.itis.security.details.UserDetailsImpl;
import ru.itis.services.interfaces.AuthenticationService;

/**
 * Created by Sulaymon on 15.12.2017.
 */
@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public User getUserByAuthentication(Authentication authentication) {
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        String email = userDetails.getUsername();
        return userRepository.findByEmail(email);
    }
}
