package org.trahim.spring.objects;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserService {

    private static List<User> userList = new ArrayList<>();

    public UserService() {
        userList.add(new User("admin", "admin"));
    }

    public void createUser(User user) {
        userList.add(user);
    }


    public String checkUser(User user) {

        for (User userEx :
                userList) {
            if (userEx.equals(user)) {
                return "success";
            }
        }
        return "failed";
    }
}