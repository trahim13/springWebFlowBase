package org.trahim.spring.objects;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.stereotype.Component;
import org.springframework.webflow.execution.RequestContext;
import org.trahim.spring.exeptions.UserExistExeption;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserService {

    private static List<User> userList = new ArrayList<>();

    public UserService() {
        userList.add(new User("admin", "admin"));
    }

    public void createUser(User user, RequestContext context) throws UserExistExeption {
        if (usernameExist(user.getName())) {
            throw new UserExistExeption();
        }
        userList.add(user);
        context.getMessageContext().addMessage(new MessageBuilder().code("user_created").build());
        context.getMessageContext().addMessage(new MessageBuilder().code("enter").build());
    }


    public String checkUser(User user) {


        if (userList.contains(user)) {
            return "success";
        }

        return "failed";
    }


    private boolean usernameExist(String username) {
        for (User user : userList) {
            if (user.getName().equals(username)) {
                return true;
            }
        }

        return false;
    }
}