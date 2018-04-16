package ru.itis.controllers.teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itis.models.Group;
import ru.itis.models.User;
import ru.itis.services.implementations.AuthenticationServiceImpl;
import ru.itis.services.implementations.GroupServiceImpl;

import java.util.List;

/**
 * Date 15.04.2018
 *
 * @author Hursanov Sulaymon
 * @version v1.0
 **/

@Controller
@RequestMapping("/teacher")
public class GroupController {

    @Autowired
    private GroupServiceImpl groupService;

    @Autowired
    private AuthenticationServiceImpl authenticationService;

    @GetMapping("/groups")
    public String getGroupPage(Authentication authentication, ModelMap modelMap){
        User user = authenticationService.getUserByAuthentication(authentication);
        List<Group> groups = groupService.getAllGroup(user.getId());
        modelMap.addAttribute("groups", groups);
        return "teacher/groupsPage";
    }

    @GetMapping("/group/{groupId}")
    public String getStudentsPage(@PathVariable("groupId") Long groupId, ModelMap modelMap){
        Group group = groupService.getGroupById(groupId);
        List<User> students = null;
        if (group !=null)
            students = group.getStudents();
        modelMap.addAttribute("students", students);
        modelMap.addAttribute("groupName", group.getName());
        return "teacher/groupPage";
    }

}
