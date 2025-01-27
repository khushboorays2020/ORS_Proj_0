package in.co.rays.project0.DTO;

import java.sql.Timestamp;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Table;

/**
 * User POJO class. It is persistent object.
 * 
 * @author DAO
 * @version 1.0
 * @Copyright (c) SunilOS
 */
@Entity
@Table(name="ST_USER")
public class UserDTO extends BaseDTO  {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
     * Lock Active constant for User
     */
    public static final String ACTIVE = "Active";
    /**
     * Lock Inactive constant for User
     */
    public static final String INACTIVE = "Inactive";
    

	/**
     * First Name of User
     */
    @Column(name = "FIRST_NAME", length = 50)
    private String firstName;
    /**
     * Last Name of User
     */
    @Column(name = "LAST_NAME", length = 50)
    private String lastName;
    /**
     * Login of User
     */
    @Column(name = "LOGIN", length = 50)
    private String login;
    /**
     * Password of User
     */
    @Column(name = "PASSWORD", length = 50)
    private String password;
    
    /**
     *Confirl Password of User
     */
    @Column(name = "CONFIRMPASSWORD", length = 50)
    private String confirmPassword;
    /**
     * Date of Birth of User
     */
    @Column(name = "DOB")
    private Date dob;
    /**
     * MobielNo of User
     */
    @Column(name = "MOBILE_NO", length = 15)
    private String mobileNo;
    /**
     * Role of User
     */
    @Column(name = "ROLE_ID")
    private Long roleId;
    /**
     * Number of unsuccessful login attempt
     */
/*    @Column(name = "UNSUCCESSFUL_LOGIN")
    private int unSuccessfulLogin;
*/ 
    /**
     * Gender of User
     */
    @Column(name = "GENDER", length = 10)
    private String gender;
    /**
     * Last login timestamp
     */
    
    /*@Column(name = "LAST_LOGIN", length = 50)
    private Timestamp lastLogin;
    *//**
     * User Lock
     *//*
    @Column(name = "USER_LOCK", length = 10)
    private String lock = INACTIVE;
    *//**
     * IP Address of User from where User was registred.
     *//*
    @Column(name = "REGISTERED_IP", length = 20)
    private String registeredIP;
    *//**
     * IP Address of User of his last login
     *//*
    @Column(name = "LAST_LOGIN_IP", length = 20)
    private String lastLoginIP;
*/
    /**
     * accessor
     */
   


	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}


	 public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getKey() {
	        return id + "";
	    }

	    public String getValue() {
	        return firstName + " " + lastName;
	    }

	
	

}
