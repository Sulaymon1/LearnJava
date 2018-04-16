package ru.itis.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ru.itis.models.User;
import ru.itis.repositories.UserRepository;

import java.util.Optional;

/**
 * Created by Sulaymon on 20.03.2018.
 */
@Component
public class UserRegistrationValidator implements Validator {

    @Autowired
    private UserRepository repository;

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.getName().equals(User.class.getName());
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;

        Optional<User> userOptional = repository.findFirstByEmail(user.getEmail());

        if (userOptional.isPresent()){
            errors.reject("bad.emailIsExist","Student already exists with this email");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "error.name", "name must have at least 2 characters");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"phoneNumber", "error.phone", "can't be empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "hashPassword", "error.password", "password must be more than 3 characters");

    }
}
