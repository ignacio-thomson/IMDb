package cl.desafiolatam.imdb.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	// Se definen de forma estatica dos credenciales usuario - pass: nacho - admin; invitado - 12345; 
	
	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("nacho").password(passwordEncoder().encode("admin")).roles("ADMIN").and()
				.withUser("invitado").password(passwordEncoder().encode("12345")).roles("USER");
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		
		// Linea 26: Recursos que puedo utilizar en la página login (la imagen)

		String[] staticResources = { "/css/**", "/img/**", "/fonts/**", "/scripts/**", };

		http.csrf().disable().authorizeRequests().antMatchers(staticResources).permitAll().antMatchers("/homeadmin/**")
				.hasRole("ADMIN").antMatchers("/home/**").hasRole("USER").antMatchers("/login", "/registro").permitAll().anyRequest()
				.authenticated().and().formLogin().loginPage("/login").failureUrl("/login?error=true")
				.usernameParameter("user").passwordParameter("password").defaultSuccessUrl("/default").and()
				.exceptionHandling().accessDeniedPage("/error");

	}

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
