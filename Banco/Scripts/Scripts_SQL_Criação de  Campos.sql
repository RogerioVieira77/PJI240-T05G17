/* Criação de Campo */
alter table ponto_coleta add column regiao_cod int not null;

/* Alteração de Campo */
/* Dropa e Cria de novo */
alter table ponto_coleta drop column regiao;
