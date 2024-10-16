package com.descarte.medicamentos.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**") // Aplica CORS a todas as rotas /api
                .allowedOrigins("http://localhost:5500") // Permite origem do frontend rodando na porta 5500
                .allowedMethods("GET", "POST", "PUT", "DELETE") // Permite esses métodos HTTP
                .allowedHeaders("*") // Permite todos os cabeçalhos
                .allowCredentials(true); // Permite o uso de credenciais (cookies, autenticação)
    }
}
