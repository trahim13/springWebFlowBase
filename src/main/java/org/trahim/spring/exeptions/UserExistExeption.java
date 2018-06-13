package org.trahim.spring.exeptions;

public class UserExistExeption extends Exception {
    public UserExistExeption(String message) {
        super(message);
    }

    public UserExistExeption(String message, Throwable cause) {
        super(message, cause);
    }

    public UserExistExeption(Throwable cause) {
        super(cause);
    }

    protected UserExistExeption(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);


    }

    public UserExistExeption() {
        super();
    }
}
