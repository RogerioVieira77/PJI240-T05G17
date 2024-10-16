package com.descarte.medicamentos.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import static org.springframework.security.config.Customizer.withDefaults;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // Desabilitar a segurança para permitir acesso sem autenticação
        http.csrf().disable()
            .authorizeHttpRequests((authorize) -> authorize.anyRequest().permitAll())
            .httpBasic(withDefaults());
        return http.build();
    }
}
