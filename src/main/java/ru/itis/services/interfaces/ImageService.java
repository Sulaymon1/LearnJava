package ru.itis.services.interfaces;

import ru.itis.models.ImageInfo;

import javax.servlet.http.HttpServletResponse;

/**
 * Date 16.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
public interface ImageService {
    void saveImage(ImageInfo imageInfo);
    ImageInfo getImageByUID(Long uid);

    void getPicture(String name, HttpServletResponse response);
}
