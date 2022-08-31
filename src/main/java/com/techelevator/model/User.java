package com.techelevator.model;

import javax.sql.DataSource;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.techelevator.authentication.PasswordHasher;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import java.util.List;

/**
 * User
 */
public class User {
    @NotBlank(message = "Username is required")
    @Email(message="Must be in Email format")
    private String username;

    @NotBlank(message = "Role is required")
    private String role;
    private long id;


    @NotBlank(message = "Password is required")
    @Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}$", message = "Password must match all requirements")
    private String password;
    private String confirmPassword;

    private boolean passwordMatching;
    private boolean emailExist;

    @AssertTrue(message = "Passwords must match")
    public boolean isPasswordMatching() {
        if (password != null) {
            return password.equals(confirmPassword);
        }
        return true;
    }

//    @AssertTrue(message = "This username already exists")
//    public boolean isEmailExist() {
//        List<User> usersList = dao.getAllUsers();
//        for(User user : usersList) {
//            if(user.getUsername().equals(username)){
//                return true;
//            }
//        }
//        return false;
//    }
    public void setEmailExist(boolean emailExist) {
        this.emailExist = emailExist;
    }
    public String getPassword() {
        return password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}