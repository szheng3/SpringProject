package com.websystique.springmvc.DAO;

import com.websystique.springmvc.validation.ValidEmail;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


public class User {

    @NotBlank
    @Size(min = 8, max = 15)
    @Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{4,}$", message = "Minimum 8 characters at least 1 Alphabet and 1 Number:")
    private String username;

    @NotBlank
    @Pattern(regexp = "^\\S+$", message = "Password cannot contain spaces")
    @Size(min = 8, max = 15)
    private String password;

    @ValidEmail
    private String email;

    private boolean enabled = false;
    private String role;


    public User() {

    }

    public User(String username, String password, String email, boolean enabled, String role) {

        this.username = username;
        this.password = password;
        this.email = email;
        this.enabled = enabled;
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
