package com.schoolmgt.form;

import javax.validation.constraints.NotEmpty;

import com.schoolmgt.dto.AttendanceDTO;
import com.schoolmgt.dto.BaseDTO;
import com.schoolmgt.dto.ClassDTO;
import com.schoolmgt.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;


public class AttendanceForm extends BaseDTO{
	
	
	@NotEmpty(message = "Class name is required")
	private String classId;
	
	@NotEmpty(message = "Student name is required")
	private String studentId;

	@NotEmpty(message = "Status is required")
	private String status;
	
	
	
	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public AttendanceDTO getDTO() {
		AttendanceDTO bean=new AttendanceDTO();
		bean.setId(id);
		bean.setClassId(DataUtility.getLong(classId));
		bean.setStudentId(DataUtility.getLong(studentId));
		bean.setStatus(status);

		return bean;
	}

	public void populate(AttendanceDTO bean) {
		id = bean.getId();
		classId = DataUtility.getStringData(bean.getClassId());
		studentId = DataUtility.getStringData(bean.getStudentId());

	}

	
	

}