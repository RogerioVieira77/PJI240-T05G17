/*criação de Tabela */
create table tabela_teste (
Campo_1 int not null auto_increment,
Campo_2 char(20),
Campo_3 char(255),
primary key (Campo_1));

/*drop de Tabela */
drop table tabela_teste;

/* Alteração de TIPO de CAMPO

	alter table NomeDaTabela modify Campo_Modificado int;

Para os campos numéricos e de caracteres siga o padrão.

*/

/*Alteração de TAMANHO do CAMPO
Mantemos o tipo e alteramos o tamanho, também o modify.

	alter table NomeDaTabela modify column Campo_Modificado varchar(100);
altere o valor entre ()

*/
