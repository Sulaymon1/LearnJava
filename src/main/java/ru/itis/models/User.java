package ru.itis.models;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Email;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.security.Role.Role;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Setter
@Getter
@Entity
@Table(name = "users")
@ToString
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

    @Email
    @NotNull
    @Column(unique = true)
    private String email;

    private String inviteCode;

    @Column(columnDefinition = "varchar default '/admin/images/default.png'")
    private String image = "/admin/images/default.png";
    private String gitRepo;

    @NotNull
    private String phoneNumber;

    private String address;
    private String hashPassword;

    @Enumerated(EnumType.STRING)
    private Role role;


}
