package org.trahim.spring.objects;

import org.springframework.stereotype.Component;
import org.trahim.spring.exeptions.UserExistExeption;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserService {

    private static List<User> userList = new ArrayList<>();

    public UserService() {
        userList.add(new User("admin", "admin"));
    }

    public void createUser(User user) throws UserExistExeption {
        if (checkUser(user).equals("success")) {
            throw new UserExistExeption();
        }
        userList.add(user);
    }


    public String checkUser(User user) {


        if (userList.contains(user)) {
            return "success";
        }

        return "failed";
    }
}