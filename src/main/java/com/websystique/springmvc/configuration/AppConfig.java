package com.websystique.springmvc.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.websystique.springmvc")
public class AppConfig extends WebMvcConfigurerAdapter{

	/**
     * Configure TilesConfigurer.
     */
//	@Bean
//	public TilesConfigurer tilesConfigurer(){
//	    TilesConfigurer tilesConfigurer = new TilesConfigurer();
//	    tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/views/**/tiles.xml"});
//	    tilesConfigurer.setCheckRefresh(true);
//	    return tilesConfigurer;
//	}
//
//	/**
//     * Configure ViewResolvers to deliver preferred views.
//     */
//	@Override
//	public void configureViewResolvers(ViewResolverRegistry registry) {
//		TilesViewResolver viewResolver = new TilesViewResolver();
////		viewResolver.setOrder(0);
//		registry.viewResolver(viewResolver);
//	}

	/**
     * Configure ResourceHandlers to serve static resources like CSS/ Javascript etc...
     */

	@Bean(name = "HelloWorld")
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/pages/");
		viewResolver.setSuffix(".jsp");
		viewResolver.setOrder(1);


		return viewResolver;
	}

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("/static/");
    }
    
}

