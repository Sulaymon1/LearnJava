package ru.itis.services.interfaces;

import ru.itis.models.Group;

import java.util.List;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
public interface GroupService {
    List<Group> getAllGroup(Long id);
    void addNewGroup(Group group);
    Group getGroupById(Long id);
}
