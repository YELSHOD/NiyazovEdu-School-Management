package com.schoolmgt.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="assignclass")
public class AssignClassDTO extends BaseDTO {
	
	@Column(name = "className", length = 755)
	private String className;

	@Column(name = "studentName", length = 755)
	private String studentName;
	
	private long studentId;
	
	private long classId;
	

	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public String getStudentName() {
		return studentName;
	}


	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}


	public long getStudentId() {
		return studentId;
	}


	public void setStudentId(long studentId) {
		this.studentId = studentId;
	}


	public long getClassId() {
		return classId;
	}


	public void setClassId(long classId) {
		this.classId = classId;
	}


	@Override
	public String toString() {
		return "AssignClassDTO [className=" + className + ", studentName=" + studentName + ", studentId=" + studentId
				+ ", classId=" + classId + "]";
	}
	
	
	
	
	

}
