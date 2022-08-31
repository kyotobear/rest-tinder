package com.techelevator.controller.user.registration;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.User;
import com.techelevator.model.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;


/**
 * AccountController
 */
@Controller
public class RegistrationController {
    @Autowired
    private AuthProvider auth;

    @Autowired
    private UserDao dao;

    @RequestMapping(path = "/register", method = RequestMethod.GET)
    public String register(ModelMap modelHolder) {
        if (!modelHolder.containsAttribute("user")) {
            modelHolder.put("user", new User());
        }
        return "user/registration/register";
    }

    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute("user") User user, BindingResult result, RedirectAttributes flash) {
        if (!dao.isValidEmail(user.getUsername()) || result.hasErrors()) {
            flash.addFlashAttribute("user", user);
            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
            flash.addFlashAttribute("message", !dao.isValidEmail(user.getUsername()) && result.hasErrors() ? "Please fix the following errors: Unique emails only and please fix password" : result.hasErrors() ? "Please fix the following errors" : !dao.isValidEmail(user.getUsername()) ? "Unique emails only" : "");
            return "redirect:/register";
        }
        auth.register(user.getUsername(), user.getPassword(), user.getRole());
        return "redirect:/registrationSuccess";
    }

    @RequestMapping("/registrationSuccess")
    public String showRegistrationSuccessScreen() {
        return "user/registration/registrationSuccess";
    }

}
