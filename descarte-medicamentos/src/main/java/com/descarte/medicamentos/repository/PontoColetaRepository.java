package com.descarte.medicamentos.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.descarte.medicamentos.model.PontoColeta;
import java.util.List;

public interface PontoColetaRepository extends JpaRepository<PontoColeta, Long> {
    
    // Método de Busca de pontos de coleta por CEP, Cidade, Região e Zona
    List<PontoColeta> findByCep(String cep);
    List<PontoColeta> findByCidade(String cidade);
    List<PontoColeta> findByRegiao(String regiao);
    List<PontoColeta> findByZona(String zona);
    
}