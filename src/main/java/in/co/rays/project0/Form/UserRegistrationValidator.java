package in.co.rays.project0.Form;


import java.text.ParseException;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import in.co.rays.project0.Util.DataValidator;


@Component
public class UserRegistrationValidator implements Validator{
	public boolean supports(Class<?> clazz) {
		return UserRegistrationForm.class.isAssignableFrom(clazz);
	}

	
	public void validate(Object target, Errors errors) {
		UserRegistrationForm registrationForm = (UserRegistrationForm) target;
		String firstName = registrationForm.getFirstName();
		String lastName = registrationForm.getLastName();
	    String password = registrationForm.getPassword();
		String confirmPassword = registrationForm.getConfirmPassword();
		String dob = registrationForm.getDob();
		String mobileNo = registrationForm.getMobileNo();
		
		if (!DataValidator.isNull(firstName)) {
			if (!DataValidator.isName(firstName)) {
				errors.rejectValue("firstName" ,"error.firstName.invalid");
			}else if(DataValidator.isWhiteSpace(firstName)){
				errors.rejectValue("firstName", "error.firstName.alfabet");
				
			}
		}
		if (!DataValidator.isNull(lastName)) {
			if (!DataValidator.isName(lastName)) {
				errors.rejectValue("lastName" ,"error.lastName.invalid");
			}
			else if(DataValidator.isWhiteSpace(lastName)){
				errors.rejectValue("lastName", "error.lastName.alfabet");
				
			}
		}
		
		if (!DataValidator.isNull(password)) {
			if (!DataValidator.isPassword(password)) {
				errors.rejectValue("password", "error.password");
			}
		}

		if (!DataValidator.isNull(confirmPassword)) {
			if (!password.equals(confirmPassword) && !"".equals(confirmPassword)) {
				errors.rejectValue("confirmPassword", "error.confirmPassword");
			}
		}
		if (!DataValidator.isNull(mobileNo)) {
			 if (!DataValidator.isMob(mobileNo)) {
				errors.rejectValue("mobileNo", "error.mobileNo.invalid");
			}
		}

		if (!DataValidator.isNull(dob)) {
			try {
				if (!DataValidator.isDOB(dob)) {
					errors.rejectValue("dob", "error.dob");
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}

	}

}
