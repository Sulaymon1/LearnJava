package ru.itis.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.models.Group;
import ru.itis.repositories.GroupRepository;
import ru.itis.services.interfaces.GroupService;

import java.util.List;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/
@Service
public class GroupServiceImpl implements GroupService {

    @Autowired
    private GroupRepository groupRepository;

    @Override
    public List<Group> getAllGroup(Long id) {
        return groupRepository.findAllByOwnerId(id);
    }

    @Override
    public void addNewGroup(Group group) {
        groupRepository.save(group);
    }

    @Override
    public Group getGroupById(Long id) {
        Group group = groupRepository.findOne(id);
        return group;
    }
}
