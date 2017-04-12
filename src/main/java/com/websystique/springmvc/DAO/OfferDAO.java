package com.websystique.springmvc.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.*;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.util.List;

/**
 * Created by Shuai Zheng on 4/9/17.
 */
@Component
public class OfferDAO {

    private NamedParameterJdbcTemplate jdbc;

    @Autowired
    public void setJdbc(DataSource jdbc) {
        this.jdbc = new NamedParameterJdbcTemplate(jdbc);
    }

    public Boolean deleteOffer(int id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", id);
        return (jdbc.update("delete from offers where id=:id", params) == 1);

    }

    public boolean create(Offer offer) {
        BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(offer);

        return jdbc.update("insert into offers(name,text,email) value(:name,:text,:email)", params) == 1;

    }

    @Transactional
    public int[] create(List<Offer> offers) {

        SqlParameterSource[] params = SqlParameterSourceUtils.createBatch(offers.toArray());

        return jdbc.batchUpdate("insert into offers(id, name,text,email) value(:id,:name,:text,:email)", params);

    }

    public boolean update(Offer offer) {
        BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(offer);

        return jdbc.update("update offers set name=:name, text=:text,email=:email where id=:id", params) == 1;

    }

    public List<Offer> getOffers() {
        return jdbc.query("select * from offers", new OfferRowMapper());

    }

    public List<Offer> getOffers(String name) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("name", name);
        return jdbc.query("select * from offers where name = :name", params, new OfferRowMapper());

    }

    public Offer getOffers(int id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", id);

        return jdbc.queryForObject("select * from offers where id = :id", params, new OfferRowMapper());

    }
}
