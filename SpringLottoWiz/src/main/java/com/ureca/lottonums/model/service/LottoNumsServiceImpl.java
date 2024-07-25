package com.ureca.lottonums.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ureca.lottonums.dto.LottoNums;
import com.ureca.lottonums.model.dao.LottoNumsDAO;

@Service
public class LottoNumsServiceImpl implements LottoNumsService{
	
	@Autowired
	LottoNumsDAO lottoNumsDAO;

	@Override
	public int add(LottoNums lottonums) throws SQLException {
		return lottoNumsDAO.insert(lottonums);
	}

	@Override
	public int edit(LottoNums lottonums) throws SQLException {
		return lottoNumsDAO.update(lottonums);
	}

	@Override
	public int remove(int no) throws SQLException {
		return lottoNumsDAO.delete(no);
	}

	@Override
	public LottoNums read(int no) throws SQLException {
		return lottoNumsDAO.select(no);
	}

	@Override
	public List<LottoNums> readAll() throws SQLException {
		return lottoNumsDAO.selectAll();
	}

}
