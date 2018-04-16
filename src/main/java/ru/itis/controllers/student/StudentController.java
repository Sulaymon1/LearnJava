package ru.itis.controllers.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itis.models.User;
import ru.itis.services.implementations.AuthenticationServiceImpl;

/**
 * Date 16.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private AuthenticationServiceImpl authenticationService;


}
