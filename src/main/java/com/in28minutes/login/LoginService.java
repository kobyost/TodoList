package com.in28minutes.login;

public class LoginService {
    public boolean validateUser(String user, String password) {
        return user.equalsIgnoreCase("koby") && password.equals("123");
    }

}