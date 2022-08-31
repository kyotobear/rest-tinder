package com.techelevator.model;

public interface EventsDao {
    public void updateLikes(Long restaurantId, Long eventId);
    public void updateDislikes(Long restaurantId, Long eventId);
}
