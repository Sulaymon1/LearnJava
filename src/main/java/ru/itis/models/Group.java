package ru.itis.models;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Getter
@Setter
@Entity
@Table(name = "groups")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Column(unique = true)
    private String name;
    private String gitRepo;
    private Long ownerId;
    @ManyToMany(targetEntity = User.class, fetch = FetchType.LAZY)
    private List<User> students;
    @OneToMany(targetEntity = Topic.class, mappedBy = "id", fetch = FetchType.LAZY)
    private List<Topic> topics;
}
