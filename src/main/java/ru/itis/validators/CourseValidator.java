package ru.itis.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ru.itis.models.Course;
import ru.itis.repositories.CourseRepository;

import java.util.Optional;

/**
 * Created by Sulaymon on 03.04.2018.
 */
@Component
public class CourseValidator implements Validator {

    @Autowired
    private CourseRepository courseRepository;

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.getName().equals(Course.class.getName());
    }

    @Override
    public void validate(Object target, Errors errors) {
        Course course = (Course) target;

        Optional<Course> optionalCourse = courseRepository.findCourseByCourseName(course.getCourseName());
        if (optionalCourse.isPresent()){
            errors.reject("Error, course is already exists!");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "courseName", "error.courseName", "Enter courseName!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shortDescription", "error.shortDescription", "Enter short description!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "about", "error.about", "Course can't be without description!");

    }
}
