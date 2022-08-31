package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.JdbcEventsDao;
import com.techelevator.model.RestaurantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class EventsController {

    @Autowired
    private JdbcEventsDao eventsDao;

    @Autowired
    private AuthProvider auth;


    @RequestMapping(path = "/viewRestaurantsResults", method = RequestMethod.POST)
    public @ResponseBody ResponseEntity<Void> updateLikes(@RequestParam long restaurant, @RequestParam long eventId, @RequestParam String reaction) {
        if(reaction.equals("true")){
            eventsDao.updateLikes(restaurant, eventId);
        } else {
            eventsDao.updateDislikes(restaurant, eventId);
        }
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }}
