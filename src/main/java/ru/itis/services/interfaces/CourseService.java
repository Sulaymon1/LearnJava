package ru.itis.services.interfaces;

import ru.itis.models.Course;

import java.util.List;

/**
 * Created by Sulaymon on 03.04.2018.
 */
public interface CourseService {
    void addNewCourse(Course course);
    Course getCourseByName(String name);
    List<Course> getAllCourses();

    List<Course> getAllActiveCourse();

    void deleteCourse(Long id);

    void archiveCourse(Long id);

    void restoreCourse(Long id);
}
