package com.ureca.lottonums.model.dao;

import java.sql.SQLException;
import java.util.List;

//import org.apache.ibatis.annotations.Delete;
//import org.apache.ibatis.annotations.Insert;
//import org.apache.ibatis.annotations.Mapper;
//import org.apache.ibatis.annotations.Select;
//import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Mapper;

import com.ureca.lottonums.dto.LottoNums;

@Mapper
public interface LottoNumsDAO {
	//@Insert("insert into lottonums (num1, num2, num3, num4, num5, num6) values (#{num1}, #{num2}, #{num3}, #{num4}, #{num5}, #{num6})")
	public int insert(LottoNums lottonums)throws SQLException;
	
	//@Update("update lottonums set num1=#{num1}, num1=#{num1}, num2=#{num2}, num3=#{num3}, num4=#{num4}, num5=#{num5}, num6=#{num6} where no=#{no}")
	public int update(LottoNums lottonums)throws SQLException;
	
	//@Delete("delete from lottonums where no=#{no}")
	public int delete(int no)throws SQLException;
	
	//@Select("select no, num1, num2, num3, num4, num5, num6 from lottonums where no=#{no}")
	public LottoNums select(int no)throws SQLException; //특정 Person 한명 조회 => 수정폼/상세페이지
	
	//@Select("select no, num1, num2, num3, num4, num5, num6 from lottonums order by no")
	public List<LottoNums> selectAll()throws SQLException;//모든 Person 조회


}
