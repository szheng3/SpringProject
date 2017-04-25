package com.websystique.springmvc.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

/**
 * Created by Shuai Zheng on 4/9/17.
 */

@Configuration
public class springJDBCConfig {


    @Bean(name = "DataSource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        //MySQL database we are using
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");//change url
        dataSource.setUsername("root");//change userid
        dataSource.setPassword("root");//change pwd

        //H2 database

        return dataSource;
    }

//    @Bean
//    public JdbcTemplate jdbcTemplate() {
//        JdbcTemplate jdbcTemplate = new JdbcTemplate();
//        jdbcTemplate.setDataSource(dataSource());
//        return jdbcTemplate;
//    }

//    @Bean
//    public OfferDAO offerDAO() {
//        OfferDAO empDao = new OfferDAO();
//        empDao.setJdbcTemplate(jdbcTemplate());
//        return empDao;
//    }

}
