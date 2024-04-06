package com.schoolmgt.form;

import javax.validation.constraints.NotEmpty;

import com.schoolmgt.dto.AssignClassDTO;
import com.schoolmgt.dto.BaseDTO;
import com.schoolmgt.dto.ClassDTO;
import com.schoolmgt.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;


public class AssignClassForm extends BaseDTO {
	
	@NotEmpty(message = "Student is required")
	private String studentName;
	
	@NotEmpty(message = "Student is required")
	private String className;
	
	private String studentId;
	
	private String classId;
	
	
	
	
	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public AssignClassDTO getDTO() {
		AssignClassDTO bean=new AssignClassDTO();
		bean.setId(id);
		bean.setClassName(className);
		bean.setStudentName(studentName);
		bean.setStudentId(DataUtility.getLong(studentId));
		bean.setClassId(DataUtility.getLong(classId));

		return bean;
	}

	public void populate(AssignClassDTO bean) {
		id = bean.getId();
		className=bean.getClassName();
		studentName = bean.getStudentName();
		studentId = DataUtility.getStringData(bean.getStudentId());
		classId = DataUtility.getStringData(bean.getClassId());

	}


}
