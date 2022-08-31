package com.techelevator.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;

@Component
public class JdbcEventsDao implements EventsDao {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JdbcEventsDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void updateLikes(Long restaurantId, Long eventId) {
        String sql = "UPDATE events SET likes = likes + 1 WHERE restaurant_id = ? AND event_id = ?";
        jdbcTemplate.update(sql, restaurantId, eventId);
    }

    @Override
    public void updateDislikes(Long restaurantId, Long eventId) {
        String sql = "UPDATE events SET dislikes = dislikes + 1 WHERE restaurant_id = ? AND event_id = ?";
        jdbcTemplate.update(sql, restaurantId, eventId);
    }

}
