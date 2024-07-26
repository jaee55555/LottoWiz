package com.ureca.list2024.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ureca.list2024.dto.List2024;
import com.ureca.list2024.model.dao.List2024DAO;

@Service
public class List2024ServiceImpl implements List2024Service{
	
	@Autowired
	List2024DAO list2024DAO;

	@Override
	public List2024 read(int no) throws SQLException {
		return list2024DAO.select(no);
	}

	@Override
	public List<List2024> readAll() throws SQLException {
		return list2024DAO.selectAll();
	}

}
