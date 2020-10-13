package com.eventBuzz.Genuine;

public class Events 
{
	private int eventId;
	private String eventName;
	private String eventDate;
	private String eventTime;
	private String eventVenue;
	private int teamSize;
	private double participationFees;
	private String paymentSS;
	private String posters;
	private String CoordinatorID;
	private String college;
	
	@Override
	public String toString()
	{
		return String.format(eventId + " " + eventName + " " + eventDate + " " + eventTime + " " + eventVenue + " " + teamSize + " " + participationFees + " "
				+ paymentSS + " " + posters + " " + CoordinatorID + " ");
	}
	
	@Override
	public boolean equals(Object o)
	{
		// If the object is compared with itself then return true  
        if (o == this) 
            return true;
        
        if(!(o instanceof Events))
			return false;
        
        Events copy = (Events)o;
 
		return ((Integer.compare(this.eventId, copy.eventId) != 0) && this.eventName.equals(copy.eventName) && 
				eventDate.equals(copy.eventDate) && eventTime.equals(copy.eventTime) && eventVenue.equals(copy.eventVenue) 
				&& (Integer.compare(teamSize, copy.teamSize) != 0) && (Double.compare(participationFees, copy.participationFees) != 0) && 
				paymentSS.equals(copy.paymentSS) && posters.equals(copy.posters) && CoordinatorID.equals(copy.CoordinatorID));
		
	}
	
	/**
	 * @return the eventId
	 */
	public int getEventId() {
		return eventId;
	}
	/**
	 * @param eventId the eventId to set
	 */
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	/**
	 * @return the eventName
	 */
	public String getEventName() {
		return eventName;
	}
	/**
	 * @param eventName the eventName to set
	 */
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	/**
	 * @return the eventDate
	 */
	public String getEventDate() {
		return eventDate;
	}
	/**
	 * @param eventDate the eventDate to set
	 */
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	/**
	 * @return the eventTime
	 */
	public String getEventTime() {
		return eventTime;
	}
	/**
	 * @param eventTime the eventTime to set
	 */
	public void setEventTime(String eventTime) {
		this.eventTime = eventTime;
	}
	/**
	 * @return the eventVenue
	 */
	public String getEventVenue() {
		return eventVenue;
	}
	/**
	 * @param eventVenue the eventVenue to set
	 */
	public void setEventVenue(String eventVenue) {
		this.eventVenue = eventVenue;
	}
	/**
	 * @return the teamSize
	 */
	public int getTeamSize() {
		return teamSize;
	}
	/**
	 * @param teamSize the teamSize to set
	 */
	public void setTeamSize(int teamSize) {
		this.teamSize = teamSize;
	}
	/**
	 * @return the participationFees
	 */
	public double getParticipationFees() {
		return participationFees;
	}
	/**
	 * @param participationFees the participationFees to set
	 */
	public void setParticipationFees(double participationFees) {
		this.participationFees = participationFees;
	}
	/**
	 * @return the paymentSS
	 */
	public String getPaymentSS() {
		return paymentSS;
	}
	/**
	 * @param paymentSS the paymentSS to set
	 */
	public void setPaymentSS(String paymentSS) {
		this.paymentSS = paymentSS;
	}
	/**
	 * @return the posters
	 */
	public String getPosters() {
		return posters;
	}
	/**
	 * @param posters the posters to set
	 */
	public void setPosters(String posters) {
		this.posters = posters;
	}

	/**
	 * @return the coordinatorID
	 */
	public String getCoordinatorID() {
		return CoordinatorID;
	}

	/**
	 * @param coordinatorID the coordinatorID to set
	 */
	public void setCoordinatorID(String coordinatorID) {
		CoordinatorID = coordinatorID;
	}

	/**
	 * @return the college
	 */
	public String getCollege() {
		return college;
	}

	/**
	 * @param college the college to set
	 */
	public void setCollege(String college) {
		this.college = college;
	}
}
