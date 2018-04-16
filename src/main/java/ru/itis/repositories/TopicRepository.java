package ru.itis.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.models.Topic;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
public interface TopicRepository extends JpaRepository<Topic, Long> {
}
