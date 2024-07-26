package com.ureca.list2024.model.dao;

import java.sql.SQLException;
import java.util.List;

//import org.apache.ibatis.annotations.Delete;
//import org.apache.ibatis.annotations.Insert;
//import org.apache.ibatis.annotations.Mapper;
//import org.apache.ibatis.annotations.Select;
//import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Mapper;

import com.ureca.list2024.dto.List2024;

@Mapper
public interface List2024DAO {

	public List2024 select(int drwNo)throws SQLException;
	public List<List2024> selectAll()throws SQLException;


}
