package org.trahim.spring.objects;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Objects;

public class User implements Serializable {
    @Size(min = 5, message = "{name.size.error}")
    private String name;
    @Size(min = 5, max = 10, message = "{password.size.error}")
    private String password;

    public User() {
    }

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {

        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(name, user.name) &&
                Objects.equals(password, user.password);
    }

    @Override
    public int hashCode() {

        return Objects.hash(name, password);
    }
}
