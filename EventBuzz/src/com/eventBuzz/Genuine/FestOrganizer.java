package com.eventBuzz.Genuine;

public class FestOrganizer 
{
	public String username;
	
	private String collegeName;
	private String university;
	private String streetAddr;
	private String locality;
	private String city;
	private String state;
	private String nearestMetro;
	private int pinCode;
	private String collegeEmail;
	private String collegeWebsite;
	private String password;
	private String collegePhnNo;
//	private int isActive;
	
	public FestOrganizer()
	{
		this.collegeName = null;
		this.university = null;
		this.streetAddr = null;
		this.locality = null;
		this.city = null;
		this.state = null;
		this.nearestMetro = null;
		this.pinCode = 0;
		this.collegeEmail = null;
		this.collegeWebsite = null;
		this.password = null;
		this.collegePhnNo = null;
	}
	
	@Override
	public boolean equals(Object o)
	{
		if(o == this)
			return true;
		
		if(!(o instanceof FestOrganizer))
			return false;
		
		FestOrganizer copy = (FestOrganizer)o;
		
		return (username.equals(copy.username) && collegeName.equals(copy.collegeName) && university.equals(copy.university) && streetAddr.equals(copy.streetAddr)
				&& locality.equals(copy.locality) && city.equals(copy.city) && state.equals(copy.state) && nearestMetro.equals(copy.nearestMetro) && 
				(Integer.compare(pinCode, copy.pinCode) != 0) && collegeEmail.equals(copy.collegeEmail) && collegeWebsite.equals(copy.collegeWebsite) 
				&& password.equals(copy.password) && (collegePhnNo.equals(copy.collegePhnNo)));
	}
	
	@Override
	public String toString()
	{
		return String.format(this.username + " " + this.collegeName + " " + this.university + " " + this.streetAddr + " " + this.locality + " " + this.city
				+ " " + this.state + " " + this.nearestMetro + " " + this.pinCode + " " + this.collegeEmail + " " + this.collegeWebsite + " " 
				+ this.password + " " + this.collegePhnNo);
	}
	
	/**
	 * @return the collegeName
	 */
	public String getCollegeName() 
	{
		return collegeName;
	}
	/**
	 * @param collegeName the collegeName to set
	 */
	public void setCollegeName(String collegeName) 
	{
		this.collegeName = collegeName;
	}
	/**
	 * @return the university
	 */
	public String getUniversity() {
		return university;
	}
	/**
	 * @param university the university to set
	 */
	public void setUniversity(String university) {
		this.university = university;
	}
	/**
	 * @return the streetAddr
	 */
	public String getStreetAddr() {
		return streetAddr;
	}
	/**
	 * @param streetAddr the streetAddr to set
	 */
	public void setStreetAddr(String streetAddr) {
		this.streetAddr = streetAddr;
	}
	/**
	 * @return the locality
	 */
	public String getLocality() {
		return locality;
	}
	/**
	 * @param locality the locality to set
	 */
	public void setLocality(String locality) {
		this.locality = locality;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the nearestMetro
	 */
	public String getNearestMetro() {
		return nearestMetro;
	}
	/**
	 * @param nearestMetro the nearestMetro to set
	 */
	public void setNearestMetro(String nearestMetro) {
		this.nearestMetro = nearestMetro;
	}
	/**
	 * @return the pinCode
	 */
	public int getPinCode() {
		return pinCode;
	}
	/**
	 * @param pinCode the pinCode to set
	 */
	public void setPinCode(int pinCode) 
	{
		this.pinCode = pinCode;
	}
	/**
	 * @return the collegeEmail
	 */
	public String getCollegeEmail() 
	{
		return collegeEmail;
	}
	/**
	 * @param collegeEmail the collegeEmail to set
	 */
	public void setCollegeEmail(String collegeEmail) 
	{
		this.collegeEmail = collegeEmail;
	}
	/**
	 * @return the collegeWebsite
	 */
	public String getCollegeWebsite() 
	{
		return collegeWebsite;
	}
	/**
	 * @param collegeWebsite the collegeWebsite to set
	 */
	public void setCollegeWebsite(String collegeWebsite) 
	{
		this.collegeWebsite = collegeWebsite;
	}
	/**
	 * @return the password
	 */
	public String getPassword() 
	{
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) 
	{
		this.password = password;
	}
	/**
	 * @return the collegePhnNo
	 */
	public String getCollegePhnNo() 
	{
		return collegePhnNo;
	}
	/**
	 * @param collegePhnNo the collegePhnNo to set
	 */
	public void setCollegePhnNo(String collegePhnNo) 
	{
		this.collegePhnNo = collegePhnNo;
	}
}
