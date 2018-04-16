package ru.itis.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.models.Course;

import java.util.List;
import java.util.Optional;

/**
 * Created by Sulaymon on 03.04.2018.
 */
public interface CourseRepository extends JpaRepository<Course, Long> {
    Optional<Course> findCourseByCourseName(String name);
    List<Course> findAllByActiveTrue();
    Optional<Course> findFirstById(Long id);
    Optional<Course> findFirstByCourseNameAndActiveTrue(String name);
}
