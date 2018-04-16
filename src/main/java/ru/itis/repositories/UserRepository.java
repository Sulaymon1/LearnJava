package ru.itis.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.models.User;

import java.util.Optional;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findFirstByEmail(String email);
    User findByEmail(String email);
}
