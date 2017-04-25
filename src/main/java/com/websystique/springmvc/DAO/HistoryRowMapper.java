package com.websystique.springmvc.DAO;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Shuai Zheng on 4/24/17.
 */
public class HistoryRowMapper implements RowMapper<History> {

    @Override
    public History mapRow(ResultSet resultSet, int i) throws SQLException {
        History offer = new History();
        offer.setIdtable1(resultSet.getInt("idtable1"));
        offer.setResult(resultSet.getBinaryStream("result"));
        offer.setUsername(resultSet.getString("username"));
        offer.setDate(resultSet.getTimestamp("date"));
        return offer;
    }
}