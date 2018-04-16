package ru.itis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.itis.models.Course;
import ru.itis.models.User;
import ru.itis.services.implementations.CourseServiceImpl;
import ru.itis.services.implementations.ImageServiceImpl;
import ru.itis.validators.CourseValidator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

/**
 * Created by Sulaymon on 03.04.2018.
 */
@Controller
public class CourseController {

    @Autowired
    private CourseServiceImpl courseService;

    @Autowired
    private ImageServiceImpl imageService;

    @GetMapping("/index")
    public String getAllCoursePage(@ModelAttribute("model")ModelMap modelMap){
        List<Course> allCourses = courseService.getAllActiveCourse();
        modelMap.addAttribute("courses", allCourses);
        return "guest/index";
    }

    @GetMapping("/courses")
    public String getCoursesPage(ModelMap modelMap){
        List<Course> allCourses = courseService.getAllActiveCourse();
        modelMap.addAttribute("courses", allCourses);
        return "guest/courseListPage";
    }

    @GetMapping("/course/{id}")
    public String getCoursePage(@PathVariable("id") Long id, ModelMap modelMap, HttpServletRequest request){
        Course course = courseService.getCourseById(id);
        User user = (User) request.getSession().getAttribute("user");
        if (user != null){
            if (course.getUsers().stream().anyMatch(user1 -> user1.getId().equals(user.getId())))
                modelMap.addAttribute("submitted",true);
        }
        modelMap.addAttribute("course", course);
        return "guest/coursePage";
    }

    @GetMapping("/pic/{uuid:.+}")
    public void getProfilePicture(@PathVariable("uuid") String name, HttpServletResponse response){
        imageService.getPicture(name,response);
    }

}
