package com.websystique.springmvc.DAO;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OfferRowMapper implements RowMapper<Offer> {


    @Override
    public Offer mapRow(ResultSet arg0, int arg1) throws SQLException {
        Offer offer = new Offer();
        offer.setId(arg0.getInt("id"));
        offer.setEmail(arg0.getString("email"));
        offer.setName(arg0.getString("name"));
        offer.setText(arg0.getString("text"));
        return offer;
    }

}
