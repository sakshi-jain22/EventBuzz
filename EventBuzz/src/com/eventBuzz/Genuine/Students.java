package com.eventBuzz.Genuine;

public class Students
{
	public String username;
	
	private String enroll;
	private String name;
	private String mail;
	private String password;
	private long phoneNumber;
	private String course;
	private String clg;
	private int year;
	private int isActive;
	
	@Override
	public boolean equals(Object o)
	{
		// If the object is compared with itself then return true  
        if (o == this) 
            return true;
        
        if(!(o instanceof Students))
			return false;
        
        Students copy = (Students)o;
        
        boolean uname = this.username.equals(copy.username);
        boolean eqEnroll = this.enroll.equals(copy.enroll);
        boolean eqName = name.equals(copy.name);
        boolean eqMail = mail.equals(copy.mail);
        boolean eqPassword = this.password.equals(copy.password);
        boolean eqPhn = (Long.compare(phoneNumber, copy.phoneNumber) != 0);
        boolean eqCourse = this.course.equals(copy.course);
        boolean eqClg = this.clg.equals(copy.clg);
        boolean eqYear = (Integer.compare(year, copy.year) != 0);
        
		return (uname && eqEnroll && eqName && eqMail && eqPassword && eqPhn && eqCourse && eqClg && eqYear);
		
	}
	
	@Override
	public String toString()
	{
		return String.format(this.username + " " + this.enroll + " " + this.name + " " + this.mail + " "
				+ this.password + " " + this.phoneNumber + " " + this.course + " " + this.clg + " " + this.year);
	}
	
	/**
	 * @return the enroll
	 */
	public String getEnroll() {
		return enroll;
	}
	/**
	 * @param enroll the enroll to set
	 */
	public void setEnroll(String enroll) {
		this.enroll = enroll;
	}
	
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * @return the mail
	 */
	public String getMail() {
		return mail;
	}
	/**
	 * @param mail the mail to set
	 */
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * @return the phoneNumber
	 */
	public long getPhoneNumber() {
		return phoneNumber;
	}
	/**
	 * @param phoneNumber the phoneNumber to set
	 */
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	/**
	 * @return the course
	 */
	public String getCourse() {
		return course;
	}
	/**
	 * @param course the course to set
	 */
	public void setCourse(String course) {
		this.course = course;
	}
	
	/**
	 * @return the clg
	 */
	public String getClg() {
		return clg;
	}
	/**
	 * @param clg the clg to set
	 */
	public void setClg(String clg) {
		this.clg = clg;
	}
	
	/**
	 * @return the year
	 */
	public int getYear() {
		return year;
	}
	/**
	 * @param year the year to set
	 */
	public void setYear(int year) {
		this.year = year;
	}

	/**
	 * @return the isActive
	 */
	public int getIsActive() {
		return isActive;
	}
	/**
	 * @param isActive the isActive to set
	 */
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
}