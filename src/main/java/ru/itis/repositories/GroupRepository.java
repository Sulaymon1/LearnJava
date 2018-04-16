package ru.itis.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.models.Group;

import java.util.List;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
public interface GroupRepository extends JpaRepository<Group, Long> {
    List<Group> findAllByOwnerId(Long id);
}
