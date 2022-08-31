package com.techelevator.model;

public class Events {

  private long eventId;
  private String hostName;
  private long restaurantId;
  private long likes;
  private long dislikes;
  private java.sql.Date deadline;


  public long getEventId() {
    return eventId;
  }

  public void setEventId(long eventId) {
    this.eventId = eventId;
  }


  public String getHostName() {
    return hostName;
  }

  public void setHostName(String hostName) {
    this.hostName = hostName;
  }


  public long getRestaurantId() {
    return restaurantId;
  }

  public void setRestaurantId(long restaurantId) {
    this.restaurantId = restaurantId;
  }


  public long getLikes() {
    return likes;
  }

  public void setLikes(long likes) {
    this.likes = likes;
  }


  public long getDislikes() {
    return dislikes;
  }

  public void setDislikes(long dislikes) {
    this.dislikes = dislikes;
  }


  public java.sql.Date getDeadline() {
    return deadline;
  }

  public void setDeadline(java.sql.Date deadline) {
    this.deadline = deadline;
  }

}
