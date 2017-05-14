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
        dataSource.setUrl("jdbc:mysql://sql3.freemysqlhosting.net/sql3174311?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");//change url
        dataSource.setUsername("sql3174311");//change userid
        dataSource.setPassword("4aZXGH1Yrz");//change pwd

        //H2 database
//        DatabasePopulatorUtils.execute(createDatabasePopulator(), dataSource);


        return dataSource;
    }

//    @Bean
//    public DataSource db() {
//        EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();
//        builder.setType(H2).addScript("classpath:com/websystique/springmvc/MySQLDB/db.sql");
//        return builder.build();
//    }
//
//    private DatabasePopulator createDatabasePopulator() {
//        ResourceDatabasePopulator databasePopulator = new ResourceDatabasePopulator();
//        databasePopulator.setContinueOnError(true);
//        databasePopulator.addScript(new ClassPathResource("com/websystique/springmvc/MySQLDB/db.sql"));
//        return databasePopulator;
//    }
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
