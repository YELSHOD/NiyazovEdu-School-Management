package com.schoolmgt.dto;

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="marksheet")
public class MarksheetDTO extends BaseDTO{

	@Column(name = "studentName", length = 755)
	private String studentName;
	
	@Column(name = "studentId")
	private long studentId;

	@Column(name = "subject", length = 755)
	private String subject;
	

	@Column(name = "mark", length = 755)
	private String mark;
	
	@Transient
	private List<String> subjects;
	

	@Transient
	private List<String> marks;


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


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getMark() {
		return mark;
	}


	public void setMark(String mark) {
		this.mark = mark;
	}


	public List<String> getSubjects() {
		return subjects;
	}


	public void setSubjects(List<String> subjects) {
		this.subjects = subjects;
	}


	public List<String> getMarks() {
		return marks;
	}


	public void setMarks(List<String> marks) {
		this.marks = marks;
	}
	
	

}
