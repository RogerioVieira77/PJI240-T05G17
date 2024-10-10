package com.descarte.medicamentos.service;

import com.descarte.medicamentos.model.PontoColeta;
import com.descarte.medicamentos.repository.PontoColetaRepository;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@Service
public class PontoColetaService {

    @Autowired
    private PontoColetaRepository pontoColetaRepository;

    // Método para ler os dados do Excel e salvar no banco de dados
    public void salvarPontosDeColetaDoExcel(String inputStream) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(inputStream);
        Workbook workbook = new XSSFWorkbook(fileInputStream);
        Sheet sheet = workbook.getSheetAt(0);

        // Iterar pelas linhas da planilha (ignorando o cabeçalho)
        for (int i = 1; i <= sheet.getLastRowNum(); i++) {
            Row row = sheet.getRow(i);

            // Ler os dados da planilha
            String nome = row.getCell(0).getStringCellValue();
            String endereco = row.getCell(1).getStringCellValue();
            String cidade = row.getCell(2).getStringCellValue();
            String cep = row.getCell(3).getStringCellValue();
            String estado = row.getCell(4).getStringCellValue();
            double latitude = row.getCell(5).getNumericCellValue();
            double longitude = row.getCell(6).getNumericCellValue();

            // Criar o objeto PontoColeta e salvar no banco
            PontoColeta pontoColeta = new PontoColeta();
            pontoColeta.setNome(nome);
            pontoColeta.setEndereco(endereco);
            pontoColeta.setCidade(cidade);
            pontoColeta.setCep(cep);
            pontoColeta.setEstado(estado);
            pontoColeta.setLatitude(latitude);
            pontoColeta.setLongitude(longitude);

            pontoColetaRepository.save(pontoColeta); // Salvar no banco
        }

        workbook.close();
        fileInputStream.close();
    }

	public void salvarPontosDeColetaDoExcel(InputStream inputStream) {
		// TODO Auto-generated method stub
		
	}
}
