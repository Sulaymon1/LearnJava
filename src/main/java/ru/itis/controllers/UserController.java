package ru.itis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.itis.models.User;
import ru.itis.services.implementations.UserServiceImpl;
import ru.itis.validators.UserRegistrationValidator;

import javax.validation.Valid;

/**
 * Created by Sulaymon on 18.03.2018.
 */

@Controller
public class UserController {

    @Autowired
    private UserServiceImpl service;

    @Autowired
    private UserRegistrationValidator registrationValidator;

    @InitBinder("userForm")
    public void initUserFormValidator(WebDataBinder webDataBinder){
        webDataBinder.addValidators(registrationValidator);
    }

    @GetMapping("/signUp")
    public String getRegistrationPage(){
        return "registerPage";
    }

    @PostMapping("/signUp")
    public String registerNewUser(@ModelAttribute("userForm") @Valid User user, BindingResult result,
                                  RedirectAttributes redirect){
        if (result.hasErrors()){
            redirect.addFlashAttribute("errors", result.getAllErrors().get(0).getDefaultMessage());
            return "redirect:/signUp";
        }
        service.registerNewUser(user);
        return "redirect:/";
    }
}
