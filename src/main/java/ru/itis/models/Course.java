package ru.itis.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

/**
 * Created by Sulaymon on 03.04.2018.
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "courses")
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String courseName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;
    private String courseImageUrl;
    private String shortDescription;
    private String about;
    private String duration;
    private String type;
    @Column(columnDefinition = "boolean default TRUE")
    private Boolean active =true;
}
