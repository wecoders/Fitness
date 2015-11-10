package com.ttd.fitness;

import com.ttd.fitness.config.DataBaseProperties;

import javax.annotation.PreDestroy;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

@SpringBootApplication
@Configuration
@ComponentScan
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
@EnableConfigurationProperties({DataBaseProperties.class})
@MapperScan(basePackages={"com.ttd.fitness.dao"})
public class FitFit extends SpringBootServletInitializer
{

  @Autowired
  private DataBaseProperties dataSourceProperties;
  private DataSource pool;
  
  
  

//  protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
//  {
//    return application.sources(new Class[] { FitFit.class });
//  }
//  
  @Override
  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
      return application.sources(FitFit.class);
  }
  

  public static void main(String[] args) throws Exception
  {
//    new FitFit().configure(new SpringApplicationBuilder(new Object[] { FitFit.class })).run(args);
    new FitFit().configure(
            new SpringApplicationBuilder(FitFit.class)).run(args);
  }

  @Bean(destroyMethod="close")
  public DataSource dataSource()
  {
    DataBaseProperties config = this.dataSourceProperties;

    this.pool = new DataSource();

    this.pool.setDriverClassName(config.getDriverClassName());
    this.pool.setUrl(config.getUrl());
    if (config.getUsername() != null) {
      this.pool.setUsername(config.getUsername());
    }
    if (config.getPassword() != null) {
      this.pool.setPassword(config.getPassword());
    }
    this.pool.setInitialSize(config.getInitialSize());
    this.pool.setMaxActive(config.getMaxActive());
    this.pool.setMaxIdle(config.getMaxIdle());
    this.pool.setMinIdle(config.getMinIdle());
    this.pool.setTestOnBorrow(config.isTestOnBorrow());
    this.pool.setTestOnReturn(config.isTestOnReturn());
    this.pool.setValidationQuery(config.getValidationQuery());
    this.pool.setTestWhileIdle(config.isTestWhileIdle());
    return this.pool;
  }

  @PreDestroy
  public void close() {
    if (this.pool != null)
      this.pool.close();
  }

  @Bean
  public SqlSessionFactory sqlSessionFactoryBean()
    throws Exception
  {
    SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
    sqlSessionFactoryBean.setDataSource(dataSource());

    PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
    sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath:mybatis/mapper/*.xml"));

    return sqlSessionFactoryBean.getObject();
  }

  @Bean
  public PlatformTransactionManager transactionManager() {
    return new DataSourceTransactionManager(dataSource());
  }

  
}