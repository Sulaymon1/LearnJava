package ru.itis.models;

import lombok.*;

import javax.persistence.*;

/**
 * Date 16.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Setter
@Getter
@Builder
@Entity
@Table(name = "images")
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ImageInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String type;
    private String storageFileName;
    private String url;
    private Long uid;
}
