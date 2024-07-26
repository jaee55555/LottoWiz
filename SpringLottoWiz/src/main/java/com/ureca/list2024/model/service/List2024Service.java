package com.ureca.list2024.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ureca.list2024.dto.List2024;

public interface List2024Service {
	//List2024 조회/모두조회
	
	public List2024 read(int no)throws SQLException;
	public List<List2024> readAll()throws SQLException;


}
