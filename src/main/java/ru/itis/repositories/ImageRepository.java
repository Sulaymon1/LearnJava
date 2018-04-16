package ru.itis.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.models.ImageInfo;

import java.util.Optional;

/**
 * Date 16.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
public interface ImageRepository extends JpaRepository<ImageInfo, Long> {
    ImageInfo findFirstByUid(Long id);
    Optional<ImageInfo> findFirstByStorageFileName(String name);
}
