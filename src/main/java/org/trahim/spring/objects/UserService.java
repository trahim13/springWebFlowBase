package org.trahim.spring.objects;

import org.springframework.stereotype.Component;

@Component
public class UserService {

    public String checkUser(User user) {

        if (user.getName() != null && user.getName().equals("admin") && user.getPassword() != null && user.getPassword().equals("admin")) {
            return "success";
        } else {
            return "failed";
        }

    }
}