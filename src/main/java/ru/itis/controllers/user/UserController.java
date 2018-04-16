package ru.itis.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.itis.models.ImageInfo;
import ru.itis.models.User;
import ru.itis.security.Role.Role;
import ru.itis.services.implementations.AuthenticationServiceImpl;
import ru.itis.services.implementations.ImageServiceImpl;
import ru.itis.services.implementations.UserServiceImpl;
import ru.itis.util.ImageStorageUtil;
import ru.itis.validators.UserRegistrationValidator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.Optional;

/**
 * Created by Sulaymon on 18.03.2018.
 */

@Controller
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private UserRegistrationValidator registrationValidator;

    @Autowired
    private AuthenticationServiceImpl authenticationService;

    @Autowired
    private ImageServiceImpl imageService;

    @Autowired
    private ImageStorageUtil imageStorageUtil;

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @InitBinder("userForm")
    public void initUserFormValidator(WebDataBinder webDataBinder){
        webDataBinder.addValidators(registrationValidator);
    }

    @GetMapping("/signUp")
    public String getRegistrationPage(){
        return "guest/registerPage";
    }

    @PostMapping("/signUp")
    public String registerNewUser(@ModelAttribute("userForm") @Valid User user, BindingResult result,
                                  RedirectAttributes redirect){
        if (result.hasErrors()){
            redirect.addFlashAttribute("errors", result.getAllErrors().get(0).getDefaultMessage());
            return "redirect:/signUp";
        }else if (user.getInviteCode() != null){
            String inviteCode = user.getInviteCode();
            System.out.println(inviteCode);
            // TODO: 16.04.2018 check for invite code
            user.setRole(Role.TEACHER);
        }else {
            user.setRole(Role.STUDENT);
        }
        userService.addNewUser(user);
        return "redirect:/";
    }

    @GetMapping("/login")
    public String getLoginPage(Authentication authentication, @RequestParam Optional<String> error, ModelMap modelMap){
        if (authentication != null){
            return "redirect:/";
        }
        modelMap.addAttribute("error", error);
        return "guest/login";
    }

    @GetMapping("/")
    public String root(HttpServletRequest request, Authentication authentication){
        if (authentication != null){
            User user = authenticationService.getUserByAuthentication(authentication);
            request.getSession().setAttribute("user", user);
            if (user.getRole().equals(Role.STUDENT)){
                return "redirect:/profile";
            }else if (user.getRole().equals(Role.TEACHER)){
                return "redirect:/teacher/groups";
            }
        }
        return "redirect:/login";
    }

    @GetMapping("/profile")
    public String getProfilePage(Authentication authentication, @ModelAttribute("model") ModelMap modelMap){
        if (authentication !=null) {
            User user = authenticationService.getUserByAuthentication(authentication);
            modelMap.addAttribute("user", user);
            if (user.getRole().equals(Role.STUDENT))
                return "student/profile";
            else if (user.getRole().equals(Role.TEACHER))
                return "teacher/profile";
        }
        return "redirect:/";
    }

    @PostMapping("/updateUser")
    public String updateUser( Authentication authentication,User userForm, BindingResult bindingResult){
        if (!bindingResult.hasErrors()){
            User user = authenticationService.getUserByAuthentication(authentication);
            userForm.setEmail(user.getEmail());
            userService.updateUser(userForm);
        }
        return "redirect:/profile";
    }

    @PostMapping("/updateProfileImage")
    public String updateProfileImage(Authentication authentication, MultipartFile file){
        User user = authenticationService.getUserByAuthentication(authentication);
            if (file.getSize()<4194304){ // 4MB
                ImageInfo imageInfo = imageStorageUtil.convertFromMultipartFileAndSave(file);
                imageInfo.setUid(user.getId());
                imageService.saveImage(imageInfo);
        }
        return "redirect:/profile";
    }


    @GetMapping("/profilePic/{uuid}")
    public void getProfilePicture(@PathVariable("uuid") String name, HttpServletResponse response){
        imageService.getPicture(name,response);
    }

    @PostMapping("/changePassword")
    public String updateUserPass(Authentication authentication, @RequestParam(name = "hashPassword") String oldPassword,
                                 @RequestParam(name = "password")String newPass){
        if (authentication != null) {
            User user = authenticationService.getUserByAuthentication(authentication);
                boolean matches = passwordEncoder.matches(oldPassword, user.getHashPassword());
                if (matches) {
                    String encode = passwordEncoder.encode(newPass);
                    user.setHashPassword(encode);
                    userService.updateUserPass(user);
                }
            return "redirect:/profile";
        }
        return "redirect:/index";
    }

    @GetMapping("/logout")
    public String logout(Authentication authentication, HttpServletRequest request){
        if (authentication != null){
            request.getSession().invalidate();
        }
        return "redirect:/login";
    }
}
