package ru.itis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.itis.models.Course;
import ru.itis.services.implementations.CourseServiceImpl;
import ru.itis.validators.CourseValidator;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by Sulaymon on 03.04.2018.
 */
@Controller
public class CourseController {

    @Autowired
    private CourseServiceImpl courseService;

    @GetMapping("/index")
    public String getAllCoursePage(@ModelAttribute("model")ModelMap modelMap){
        List<Course> allCourses = courseService.getAllActiveCourse();
        modelMap.addAttribute("courses", allCourses);
        return "index";
    }

    @GetMapping("/courses")
    public String getCoursesPage(ModelMap modelMap){
        List<Course> allCourses = courseService.getAllActiveCourse();
        modelMap.addAttribute("courses", allCourses);
        return "courseListPage";
    }

    @GetMapping("/course/{id}")
    public String getCoursePage(@PathVariable("id") Long id,  ModelMap modelMap){
        Course course = courseService.getCourseById(id);
        modelMap.addAttribute("course", course);
        return "coursePage";
    }



}
