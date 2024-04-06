package com.schoolmgt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolmgt.dao.MarksheetDAO;
import com.schoolmgt.dao.SubjectDAO;
import com.schoolmgt.dto.MarksheetDTO;
import com.schoolmgt.dto.SubjectDTO;

@Service
public class MarksheetService {
	

	@Autowired
	public MarksheetDAO dao;
	
	
	
	public MarksheetDTO Add(MarksheetDTO dto) {
			return	dao.save(dto);
	}
	

	public MarksheetDTO findMarksheetById(long id) {
		return dao.findById(id);
	}
	

	
	public List<MarksheetDTO> list(){
		List<MarksheetDTO> dto = dao.findAll();
		return dto;
	}
	
	public MarksheetDTO update(MarksheetDTO dto){
		MarksheetDTO bean = dao.saveAndFlush(dto);
		return bean;
	}
	
	public void delete(long id) throws Exception {
		if(id>0)
		{
			dao.deleteById(id);
		}else {
			throw new Exception("Not a valid id");
		}
		
	}

}
