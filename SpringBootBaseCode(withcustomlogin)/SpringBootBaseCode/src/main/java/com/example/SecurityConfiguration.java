package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import com.example.service.impl.UserService;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration {
	
    @Autowired
    private UserService userService;
    
	@Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
        .csrf()
        .disable()
        .authorizeHttpRequests((authorize) -> authorize
        		.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
                .requestMatchers("/login").permitAll()
                .requestMatchers(HttpMethod.GET, "/profile/*").permitAll()
                .anyRequest().authenticated())
            .securityContext((securityContext) -> securityContext
                .requireExplicitSave(false));
        
        http.formLogin()
            .loginPage("/login").permitAll()
            .defaultSuccessUrl("/page01", true)
            .failureUrl("/login?error=true");

        http.logout()
            .logoutSuccessUrl("/login");
        
        return http.build();
    }
	
    /*@Bean
    public InMemoryUserDetailsManager userDetailsService() {
        UserDetails user1 = User.withUsername("user1")
            .password(passwordEncoder().encode("user1Pass"))
            .roles("USER")
            .build();
        UserDetails user2 = User.withUsername("user2")
            .password(passwordEncoder().encode("user2Pass"))
            .roles("USER")
            .build();
        UserDetails admin = User.withUsername("admin")
            .password(passwordEncoder().encode("adminPass"))
            .roles("ADMIN")
            .build();
        return new InMemoryUserDetailsManager(user1, user2, admin);
    }*/
    
    @Bean 
    public PasswordEncoder passwordEncoder() { 
        return new BCryptPasswordEncoder(); 
    }
    
    @Bean
    public AuthenticationProvider authenticationProvider(){
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userService);
        provider.setPasswordEncoder(passwordEncoder());
        return provider;
    }
}
