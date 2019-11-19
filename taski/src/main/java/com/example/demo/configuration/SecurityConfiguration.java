package com.example.demo.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/*import com.monitorjbl.json.*;
*/
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	CustomizeAuthenticationSuccessHandler customizeAuthenticationSuccessHandler;

	@Autowired
	CustomizeLogOutSuccessHandler customizeLogOutSuccessHandler;

	// ***********Bean For JsonViewSupportFactoryBean********************

	@Bean(name = "passwordEncoder")
	public PasswordEncoder passwordencoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordencoder());

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/", "/static/**", "/assets/**", "/global_assets/**", "/register", "/registerProcess",
						"/login", "/login-password-recover", "/dashboard")
				.permitAll().antMatchers("/**").access("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')").anyRequest()
				.authenticated().and().formLogin().successHandler(customizeAuthenticationSuccessHandler)
				.loginPage("/login").usernameParameter("userName").passwordParameter("password").and().logout()
				.logoutSuccessHandler(customizeLogOutSuccessHandler).deleteCookies("JSESSIONID")
				.invalidateHttpSession(true).and().csrf().disable();
	}

}
