package ru.itis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.itis.models.Course;
import ru.itis.services.implementations.CourseServiceImpl;
import ru.itis.validators.CourseValidator;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

/**
 * Date 03.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private CourseServiceImpl courseService;


    @Autowired
    private CourseValidator courseValidator;


    @GetMapping("/course")
    public String getCourseControlPage(@ModelAttribute("model")ModelMap modelMap){
        List<Course> allCourses = courseService.getAllCourses();
        modelMap.addAttribute("courses", allCourses);
        return "admin";
    }

    @InitBinder("courseForm")
    public void initCourseValidator(WebDataBinder webDataBinder){
        webDataBinder.addValidators(courseValidator);
    }


    @PostMapping("/addCourse")
    public String addNewCourse(@ModelAttribute("courseForm") @Valid Course course, BindingResult result, RedirectAttributes redirectAttributes){
        if (result.hasErrors()){
            String errorMessage = result.getAllErrors().get(0).getDefaultMessage();
            redirectAttributes.addFlashAttribute("error",errorMessage );
            return "redirect:/admin/course";
        }
        course.setDate(LocalDate.now());
        courseService.addNewCourse(course);
        return "redirect:/admin/course";
    }


    @PostMapping("/deleteCourse/{id}")
    @ResponseBody
    public ResponseEntity deleteCourse(@PathVariable("id") Long id ){
        courseService.deleteCourse(id);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/archiveCourse/{id}")
    @ResponseBody
    public ResponseEntity archiveCourse(@PathVariable("id") Long id){
        courseService.archiveCourse(id);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/restoreCourse/{id}")
    @ResponseBody
    public ResponseEntity restoreCourse(@PathVariable("id") Long id){
        courseService.restoreCourse(id);
        return ResponseEntity.ok().build();
    }
}
