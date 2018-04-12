package ru.itis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
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

    PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

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

    @GetMapping("/profile/{id}")
    public String getProfilePage(@PathVariable("id") Long id, @ModelAttribute("model") ModelMap modelMap){
        User user = service.getUser(id);
        modelMap.addAttribute("user", user);
        return "profile";
    }

    @PostMapping("/updateUser/{id}")
    public String updateUser(@PathVariable("id") Long id, User userForm){
        User user = service.getUser(id);
        user.setAddress(userForm.getAddress());
        user.setEmail(userForm.getEmail());
        user.setPhoneNumber(userForm.getPhoneNumber());
        user.setGithub(userForm.getGithub());
        service.updateUser(user);
        return "redirect:/profile/"+id;
    }

    @PostMapping("/changePassword/{id}")
    public String updateUserPass(@PathVariable("id") Long id, @RequestParam(name = "hashPassword") String oldPassword,
                                 @RequestParam(name = "password")String newPass){
        User user = service.getUser(id);
        if (user!=null){
            boolean matches = passwordEncoder.matches(oldPassword, user.getHashPassword());
            if (matches){
                String encode = passwordEncoder.encode(newPass);
                user.setHashPassword(encode);
                service.updateUser(user);
            }
        }
        return "redirect:/profile/"+id;
    }
}
