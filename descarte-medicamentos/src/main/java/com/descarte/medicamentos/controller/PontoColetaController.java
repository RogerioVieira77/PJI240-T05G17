package com.descarte.medicamentos.controller;

import com.descarte.medicamentos.model.PontoColeta;
import com.descarte.medicamentos.repository.PontoColetaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.descarte.medicamentos.service.PontoColetaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.io.IOException;

@RestController
@RequestMapping("/api/pontos-coleta")
public class PontoColetaController {

    @Autowired
    private PontoColetaRepository pontoColetaRepository;
    private PontoColetaService pontoColetaService;

    @PostMapping("/upload")
    public String uploadPontosColeta(@RequestParam("Coleta_1") MultipartFile file) throws IOException {
        // Salvar a planilha de pontos de coleta no banco de dados
        pontoColetaService.salvarPontosDeColetaDoExcel(file.getInputStream());
        return "Pontos de coleta salvos com sucesso!";}
    
    
    // Endpoint para listar todos os pontos de coleta
    @GetMapping
    public List<PontoColeta> getAllPontosColeta() {
        return pontoColetaRepository.findAll();
    }

    // Endpoint para buscar ponto de coleta por CEP
    @GetMapping("/cep/{cep}")
    public List<PontoColeta> getPontosByCep(@PathVariable String cep) {
        return pontoColetaRepository.findByCep(cep);
    }

    // Endpoint para buscar ponto de coleta por cidade
    @GetMapping("/cidade/{cidade}")
    public List<PontoColeta> getPontosByCidade(@PathVariable String cidade) {
        return pontoColetaRepository.findByCidade(cidade);
    }
    
    // Novo endpoint para busca por região
    @GetMapping("/regiao/{regiao}")
    public List<PontoColeta> getPontosByRegiao(@PathVariable String regiao) {
        return pontoColetaRepository.findByRegiao(regiao);
    }

    // Novo endpoint para busca por zona
    @GetMapping("/zona/{zona}")
    public List<PontoColeta> getPontosByZona(@PathVariable String zona) {
        return pontoColetaRepository.findByZona(zona);
    }
    
    // Endpoint para cadastrar um novo ponto de coleta
    @PostMapping
    public PontoColeta createPontoColeta(@RequestBody PontoColeta pontoColeta) {
        return pontoColetaRepository.save(pontoColeta);
    }
    
        
}