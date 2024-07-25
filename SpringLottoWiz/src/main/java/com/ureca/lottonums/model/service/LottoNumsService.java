package com.ureca.lottonums.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ureca.lottonums.dto.LottoNums;

public interface LottoNumsService {
	//LottoNums 추가/수정/삭제/조회/모두조회
	
	public int add(LottoNums lottonums)throws SQLException;
	public int edit(LottoNums lottonums)throws SQLException;
	public int remove(int no)throws SQLException;
	
	public LottoNums read(int no)throws SQLException;
	public List<LottoNums> readAll()throws SQLException;


}
