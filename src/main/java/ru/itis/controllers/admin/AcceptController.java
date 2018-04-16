package ru.itis.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.models.Course;
import ru.itis.models.User;
import ru.itis.services.implementations.AuthenticationServiceImpl;
import ru.itis.services.implementations.CourseServiceImpl;

import java.util.Optional;

/**
 * Date 16.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Controller
public class AcceptController {


    @Autowired
    private AuthenticationServiceImpl authenticationService;

    @Autowired
    private CourseServiceImpl courseService;


    @GetMapping("/apply/{courseName}")
    public String acceptApplication(@PathVariable("courseName") String courseName, Authentication authentication){
        if (authentication != null){
            User user = authenticationService.getUserByAuthentication(authentication);
            Optional<Course> courseOptional = courseService.getCourseByNameAndActive(courseName);
            if (courseOptional.isPresent()){
                Course course = courseOptional.get();
                course.getUsers().add(user);
                courseService.addNewCourse(course);
            }
        }
        return "redirect:/courses";
    }

    @GetMapping
    public String getApplicants(){
        return "";
    }

}
