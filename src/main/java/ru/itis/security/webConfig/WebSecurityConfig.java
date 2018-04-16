package ru.itis.security.webConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Created by Sulaymon on 10.12.2017.
 */
@ComponentScan("ru.itis")
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private AuthenticationProvider authenticationProvider;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/index").permitAll()
                .antMatchers("/courses").permitAll()
                .antMatchers("/course/**").permitAll()
                .antMatchers("/pic/**").permitAll()
                .antMatchers("/login").permitAll()
                .antMatchers("/admin/**").hasAuthority("ADMIN")
                .antMatchers("/student/**").hasAuthority("STUDENT")
                .antMatchers("/teacher/**").hasAuthority("TEACHER")
                .antMatchers("/css/**").permitAll()
                .antMatchers("/admin/**").permitAll()
                .antMatchers("/js/**").permitAll()
                .antMatchers("/assets/**").permitAll()
                .antMatchers("/images/**").permitAll()
                .antMatchers("/fonts/**").permitAll()
                .antMatchers("/sass/**").permitAll()
                .antMatchers("/customImage/**").permitAll()
                .antMatchers("/customJs/**").permitAll()
                .antMatchers("/signUp").permitAll()
                .antMatchers("/").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/login")
                .usernameParameter("email")
                .passwordParameter("password")
                .defaultSuccessUrl("/")
                .failureUrl("/login?errors")
                .permitAll()
                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login")
                .permitAll();

        http.csrf().disable();
    }

    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider);
        auth.userDetailsService(userDetailsService);
    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
}
