package ru.itis.launcher;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * Created by Sulaymon on 18.03.2018.
 */
@SpringBootApplication
@EnableJpaRepositories("ru.itis.repositories")
@ComponentScan("ru.itis")
@EntityScan("ru.itis.models")
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
