package ru.itis.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.models.Course;
import ru.itis.models.ImageInfo;
import ru.itis.repositories.CourseRepository;
import ru.itis.services.interfaces.CourseService;
import ru.itis.util.ImageStorageUtil;

import java.util.List;
import java.util.Optional;

/**
 * Created by Sulaymon on 03.04.2018.
 */
@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseRepository courseRepository;



    @Override
    public void addNewCourse(Course course) {
        courseRepository.save(course);
    }

    @Override
    public Course getCourseById(Long id) {
        Course course = courseRepository.findFirstById(id).get();
        return course;
    }

    @Override
    public List<Course> getAllCourses() {
        List<Course> courseList = courseRepository.findAll();
        return courseList;
    }

    @Override
    public List<Course> getAllActiveCourse(){
        List<Course> courseList = courseRepository.findAllByActiveTrue();
        return courseList;
    }

    @Override
    public void deleteCourse(Long id){
        courseRepository.delete(id);
    }

    @Override
    public void archiveCourse(Long id){
        Optional<Course> courseOptional = courseRepository.findFirstById(id);
        if (courseOptional.isPresent()){
            Course course = courseOptional.get();
            course.setActive(false);
            courseRepository.save(course);
        }
    }

    @Override
    public void restoreCourse(Long id){
        Optional<Course> courseOptional = courseRepository.findFirstById(id);
        if (courseOptional.isPresent()){
            Course course = courseOptional.get();
            course.setActive(true);
            courseRepository.save(course);
        }
    }

    @Override
    public Optional<Course> getCourseByNameAndActive(String name) {
        return courseRepository.findFirstByCourseNameAndActiveTrue(name);
    }
}
