package org.nwo.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@EnableTransactionManagement
public class HibernateConf {
	


	@Bean
    public SessionFactory sessionFactory() {
            LocalSessionFactoryBuilder builder = 
		new LocalSessionFactoryBuilder(dataSource());
            builder.scanPackages("org.nwo.domain")
                  .addProperties(getHibernateProperties());

            return builder.buildSessionFactory();
    }
 
   @Bean(destroyMethod = "close")
   public DataSource dataSource() {
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName("com.mysql.cj.jdbc.Driver");
		hikariConfig.setJdbcUrl("jdbc:mysql://jws-app-mysql:3306/nwo");
		hikariConfig.setUsername("user");
		hikariConfig.setPassword("located");
		
		hikariConfig.setMaximumPoolSize(5);
		hikariConfig.setConnectionTestQuery("SELECT 1");
		hikariConfig.setPoolName("springHikariCP");
		

		hikariConfig.addDataSourceProperty("dataSource.cachePrepStmts", "true");
		hikariConfig.addDataSourceProperty("dataSource.prepStmtCacheSize", "250");
		hikariConfig.addDataSourceProperty("dataSource.prepStmtCacheSqlLimit", "2048");
		hikariConfig.addDataSourceProperty("dataSource.useServerPrepStmts", "true");


		HikariDataSource dataSource = new HikariDataSource(hikariConfig);

		return dataSource;
	}
    
	
  //Create a transaction manager
  	@Bean
          public HibernateTransactionManager txManager() {
                  return new HibernateTransactionManager(sessionFactory());
          }
  
   
  
    private Properties getHibernateProperties() {
        Properties prop = new Properties();
        prop.put("hibernate.hbm2ddl.auto", "update");
        prop.put("hibernate.format_sql", "true");
        prop.put("hibernate.show_sql", "true");
        prop.put("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
        return prop;
    	}
    
}