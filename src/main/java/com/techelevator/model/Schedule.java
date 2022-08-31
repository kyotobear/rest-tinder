package com.techelevator.model;


public class Schedule {

  private long restaurantId;
  private long dayOfWeek;
  private java.sql.Time timeOpen;
  private java.sql.Time timeClosed;


  public long getRestaurantId() {
    return restaurantId;
  }

  public void setRestaurantId(long restaurantId) {
    this.restaurantId = restaurantId;
  }


  public long getDayOfWeek() {
    return dayOfWeek;
  }

  public void setDayOfWeek(long dayOfWeek) {
    this.dayOfWeek = dayOfWeek;
  }


  public java.sql.Time getTimeOpen() {
    return timeOpen;
  }

  public void setTimeOpen(java.sql.Time timeOpen) {
    this.timeOpen = timeOpen;
  }


  public java.sql.Time getTimeClosed() {
    return timeClosed;
  }

  public void setTimeClosed(java.sql.Time timeClosed) {
    this.timeClosed = timeClosed;
  }

}
