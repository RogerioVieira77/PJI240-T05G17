package com.descarte.medicamentos.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class PontoColeta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nome;
    private String endereco;
    private String cidade;
    private String cep;
    private String estado;
    private String regiaoDescr;
    private String zona;
    private int regiaoCod;
    private double latitude;
    private double longitude;
    
    // Getters e Setters atualizados para o novo campo
    
    
    public PontoColeta() {
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public String getRegiaoDescr() {
        return regiaoDescr;
    }

    public void setRegiao(String regiao) {
        this.regiaoDescr = regiaoDescr;
    }

    public int getRegiaoCod() {
        return regiaoCod;
    }

    public void setRegiaoCod(int regiaoCod) {
        this.regiaoCod = regiaoCod;
    }
        
    public String getZona() {
        return zona;
    }

    public void setZona(String zona) {
        this.zona = zona;
    }    
    
    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }
}