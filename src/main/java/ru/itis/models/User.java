package ru.itis.models;

import lombok.*;
import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Created by Sulaymon on 18.03.2018.
 */
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table( name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min = 2,max = 15)
    private String name;
    private String surname;
    private String lastname;

    @NotNull
    @Min(value = 10, message = "age required +10")
    @Max(value = 70, message = "age can't be more than 70")
    private Integer age;

    @NotNull
    private String phoneNumber;

    @NotNull
    @Column(unique = true)
    @Email
    private String email;

    @NotNull
    @Size(min = 4,message = "password must be more than 3 characters")
    private String hashPassword;
}
