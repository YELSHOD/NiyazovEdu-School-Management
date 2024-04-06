package com.schoolmgt.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="subject")
public class SubjectDTO extends BaseDTO {
	
	
	
	@Column(name = "subjectName", length = 755)
	private String subjectName;

	@Column(name = "description", length = 755)
	private String description;
	
	private long calssId;
	
	@Column(name = "className", length = 755)
	private String className;
	
	

	public String getSubjectName() {
		return subjectName;
	}



	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public long getCalssId() {
		return calssId;
	}



	public void setCalssId(long calssId) {
		this.calssId = calssId;
	}



	public String getClassName() {
		return className;
	}



	public void setClassName(String className) {
		this.className = className;
	}



	@Override
	public String toString() {
		return "SubjectDTO [subjectName=" + subjectName + ", description=" + description + ", calssId=" + calssId + "]";
	}
	
	
	
	

}
