1. Introdução

Documentos de Requisitos e repositório do código para o Projeto Integrador II da UNIVESP 2º Semestre de 2024.

PJI 240 - DRP14 -Projeto Integrador em Computação II-Turma 005  


1.1. Objetivo

Desenvolver um software com framework web que utilize banco de dados, inclua script web (Javascript), nuvem, uso de API, acessibilidade, controle de versão e testes. Opcionalmente, incluir análise de dados. 

EMENTA: Resolução de problemas. Levantamento de requisitos. Desenvolvimento web com framework. HTML. CSS. Linguagem de script. Banco de Dados. Controle de Versão. Nuvem. API. Acessibilidade. Testes. Análise de dados.

Este trabalho foi desenvolvido com base no Projeto Pedagógico de Cursos onde o objetivo do Projeto Integrador II é desenvolver um software com framework web que utilize banco de dados, inclua script web (Javascript), nuvem, uso de API, acessibilidade, controle de versão e testes. A motivação surgiu da dúvida de como descartar medicamentos de forma consciente, após uma série de pesquisas foi possível perceber a falta de uma plataforma que tivesse orientações em linguagem clara e concisa que também indicasse onde se pode descartar medicamentos. Para validação de nossa hipótese realizamos pesquisas em torno da zona leste, já que grande parte do grupo tem fácil acesso. Os resultados levaram a conclusão de que população não sabe como descartar os medicamentos e não estão cientes do impacto do descarte incorreto no meio ambiente. 

Exemplos:
https://greeneletron.org.br/
https://www.descarteconsciente.com.br/
https://www.descarteconsciente.com.br/pontos-de-coleta
https://www.ecycle.com.br/

https://live.roche.com.br/solucoes/farmaceutica/como-descartar-medicamentos?cid=ps_googlesrdescartedemedicamentos2303brexata&utm_source=_google&utm_medium=ps&utm_campaign=descartedemedicamentos&utm_term=descartarremediovencido&gclid=Cj0KCQjw_sq2BhCUARIsAIVqmQuGdZOermK8Y-UAPwLGH_5dq47ubjNSllDg0GVqu2c1hScyvDuVejwaAhHZEALw_wcB


 
2. Descrição Geral

O website vai fornecer informações sobre descarte de medicamentos

Funcionalidades
•	Pesquisa de pontos de descarte e vídeos informativos.
•	Deve ser hospedado na internet de modo que fique acessível para todos.
•	Deve ser responsivo para que possa ser utilizado em todos os dispositivos
•	Possua opção de acessibilidade.


2.1. Requisitos funcionais

•	Tela inicial
•	Carrossel de Banners
•	Frame para Vídeo com Informações
•	Pesquisa de Ponto de Coleta*
o	Por CEP
o	Por Região
o	Por Cidade
•	Tela de Cadastro de Pontos de Descarte
•	Tela de ferramentas de Acessibilidade

* Obs.: Inicialmente o sistema cobre apenas o Estado de São Paulo


2.2. Requisitos não funcionais

•	Framework web 
•	Banco de dados
•	Java Script
•	Nuvem
•	Uso de API
•	Controle de versão
•	Controle de testes

2.3. Ferramentas e Tecnologias utilizadas. 

•	FIGMA - Desenho (protótipo)
•	DrawIO - Desenho da Arquitetura
•	Astah UML - Desenho dos Requisitos
•	HTML, CSS e Java Script - Linguagens FrontEnd
•	JAVA - Linguagem Back
•	Spring Boot - Framework
•	MySQL - Banco de dados 
•	Azure - Nuvem
•	Google Maps – API
•	GIT e GitHUB - Controle de versão - 
•	Eclipse e VSCode - IDE’s


2. Arquitetura 

<img src="/docs/Diagrama-da-Arquitetura.jpg">
 


Este diagrama de arquitetura representa um sistema integrado composto por quatro principais componentes:

•	Banco de Dados:
    O sistema utiliza um banco de dados relacional MySQL para armazenar informações de usuários, pontos de descarte e outros dados relevantes. Ele é responsável por gerenciar as credenciais de login e informações de pontos de descarte de medicamento georreferenciados.

•	    Aplicação Web:
    A camada de aplicação é responsável por gerenciar a lógica do sistema. Ela é construída com uma arquitetura em camadas, onde:
o	O backend, desenvolvido na linguagem Java com Spring Boot, manipula a autenticação, validação de usuários, e consultas ao banco de dados.
o	O frontend, desenvolvido em HTML, CSS e JavaScript, é responsável por renderizar a interface de usuário (UI).

•	    Página Web com Login de Acesso:
    Esta página permite que os usuários acessem o sistema através de um formulário de login seguro. Ela envia as credenciais para a aplicação, que por sua vez valida os dados no banco de dados. Uma vez autenticado, o usuário pode atualizar os pontos de descarte de medicamento.

•	    Integração com a API do Google Maps:
    A aplicação está integrada com a API do Google Maps, permitindo a visualização de pontos de coleta de lixo eletrônico em um mapa. A API realiza a geocodificação dos endereços (como o CEP) inseridos pelos usuários e mostra os locais de coleta mais próximos, baseados nas coordenadas geográficas.


Fluxo de Funcionamento

    O usuário a página principal.
    Nesta página, o usuário pode inserir um CEP, uma Cidade ou uma Região. A aplicação consulta a API do Google Maps para obter as coordenadas geográficas correspondentes e exibe os pontos de descarte próximos, marcados no mapa.
    O banco de dados armazena as informações de cada ponto de coleta, e a aplicação utiliza essas informações para calcular a proximidade dos locais.



3. Diagrama de Casos de Uso

<img src="/docs/Diagrama de Caso de Uso.jpg">
 


Descrição do Diagrama de Caso de Uso UML

O diagrama acima mostra as interações dos atores com o sistema, a principal funcionalidade é a pesquisa de Pontos de Coleta de Medicamentos (PDM), existe ainda função de atualização ou cadastro de novos pontos, também é possível gerenciar os conteúdos da página. 

Atores

•	Usuário Final - (Usuário_Final) - Representa qualquer pessoa que utilize o sistema para buscar pontos de descarte medicamentos.
•	Administrador do Sistema - (Adm_Sistema) - O administrador do sistema será o responsável por gerenciar o conteúdo do site, incluindo o cadastro e a manutenção de pontos de descarte, além da atualização de informações e banners.
•	API do Google - A API é utilizada para “plotar” os pontos de descarte no mapa, criando a visualização do usuário.


Casos de Uso

•	Pesquisar Pontos de Descarte
A pesquisa de pontos de PDMs pose ser feita de três maneiras:
o	CEP
o	Cidade
o	Região
O sistema irá consultar a base de dados para identificar os PDMs cadastrados e os exibe em um mapa, retornando os locais mais próximos com base na localização informada.

•	Cadastrar News Letter
O usuário final também pode se cadastrar na News Letter da página, para receber informações sobre o descarte correto de medicamentos, atualizações dos PDMs e demais informações.

•	Georreferenciamento do Ponto de Descarte (PDM)
Usando a API do Google Maps, o sistema realiza a geolocalização dos PDMs.
Esse processo converte endereços em coordenadas geográficas (latitude e longitude) para que os pontos possam ser exibidos corretamente no mapa.

•	Cadastro de Pontos de Descarte (PD)
O Administrador do Sistema pode cadastrar novos PDMs e atualizar os que já existem, caso ocorra alguma mudança, pontos de descarte no sistema. O administrador insere as informações relevantes, como nome, endereço e CEP. Após o cadastro, o sistema realiza a geolocalização dos pontos para garantir que eles possam ser plotados no mapa.

•	Atualização de Notícias e Informações
    O Adm_Sistema também é responsável por manter o conteúdo informativo do sistema atualizado. Ele pode inserir ou editar notícias relacionadas ao descarte de medicamentos, legislação, eventos ou qualquer outro tipo de informação relevante que seja exibida aos usuários da aplicação.

•	Atualização dos Banners da Página
    O Adm_Sistema pode atualizar os banners exibidos na interface pública da aplicação, garantindo que os anúncios ou informações em destaque estejam sempre atualizados e relevantes para os usuários.


Relações

•	O Usuário Final e o Adm_Sistema interagem diretamente com o sistema, sendo que cada um deles possui permissões distintas.
•	A API do Google é chamada pelo sistema para fornecer o georreferenciamento dos endereços inseridos.







Referências

[1]  I.Sommerville. Engenharia de software 10º Edição
[2] IEEE 830-1998 Recommended Practice for Software Requirements Specification
[http://ieeexplore.ieee.org/iel4/5841/15571/00720574.pdf?
tp=&isnumber=15571&arnumber=720574]
 [3] W.P.P. Filho. Engenharia de software – fundamentos, métodos e padrões. 2
