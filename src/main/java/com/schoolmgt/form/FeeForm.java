package com.schoolmgt.form;

import javax.validation.constraints.NotEmpty;

import com.schoolmgt.dto.BaseDTO;
import com.schoolmgt.dto.FeeDTO;
import com.schoolmgt.dto.SubjectDTO;
import com.schoolmgt.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;


public class FeeForm extends BaseDTO {
	
	@NotEmpty(message = "Student name is required")
	private String studentId;

	@NotEmpty(message = "Amount is required")
	private String amount;
	
	
	
	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public FeeDTO getDTO() {
		FeeDTO bean=new FeeDTO();
		bean.setId(id);
		bean.setStudentId(DataUtility.getLong(studentId));
		bean.setAmount(DataUtility.getLong(amount));

		return bean;
	}

	public void populate(FeeDTO bean) {
		id = bean.getId();
		amount = DataUtility.getStringData(bean.getAmount());
		studentId = DataUtility.getStringData(bean.getStudentId());

	}

}
