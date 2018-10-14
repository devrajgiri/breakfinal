package org.nwo.config;



import org.nwo.service.impl.UserSecurityService;
import org.nwo.utility.SecurityUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;



@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	// add a reference to our security data source
	
	@Autowired
	private UserSecurityService userSecurityService;

	
	private BCryptPasswordEncoder passwordEncoder() {
		return SecurityUtility.passwordEncoder();
	}
	
	
	@Override
	public void configure(WebSecurity web) throws Exception {
	       web.ignoring().antMatchers("/resources/"); 
	     }
		
	
	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userSecurityService).passwordEncoder(passwordEncoder());
	}

	private static final String[] PUBLIC_MATCHERS = {
			"/resources/**",
			"/webapp/images/**",
			"/create",
			"/search",
			"/city",
			"/LoginPage",
			"/searchitem",
			"/searchworker",
			"/item",
			"/worker",
			"/newuser",
			"/about",
	};

	


	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		.authorizeRequests().
	/*	antMatchers("/**").*/
		antMatchers(PUBLIC_MATCHERS).
		permitAll().anyRequest().authenticated();


		http
		.csrf().disable().cors().disable()
		.formLogin().failureUrl("/LoginPage?error")
		/*.defaultSuccessUrl("/")*/
		.loginPage("/LoginPage").permitAll()
		.and()
		.logout().permitAll()
		.and()
		.rememberMe();
	}
		
}