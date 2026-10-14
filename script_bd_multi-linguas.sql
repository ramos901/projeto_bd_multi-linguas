CREATE tABLE professor(
 id_professor SERIAL PRIMARY KEY ,
 nome varchar (255) ,
 email varchar (255) ,
 cpf varchar (15)
);


SELECT * FROM professor;


INSERT INTO professor (nome, email, cpf) VALUES ('Jatniel','jatniel@gmael', '123456789')
CREATE TABLE escola(
id_escola SERIAL PRIMARY KEY,
nome_instituicao varchar(150)not null,
cnpj      varchar(18),
email_contato varchar(100)not null,
data_cadastro   timestamp
);

SELECT * FROM escola;

 INSERT INTO escola (nome_instituicao,cnpj,email_contato,data_cadastro) VALUES ('consolata', '123.456.789', 'escola.consolata@gmail.com', ',03/12/32');

 INSERT INTO escola (nome_instituicao,cnpj,email_contato,data_cadastro) VALUES ('francisco_lima', '250.050.707','franciscolima@pr.gov.br', '12/10/2020 10:21:60');

 INSERT INTO escola (nome_instituicao,cnpj,email_contato,data_cadastro) VALUES ('Colegio_adventista', '.123.432.567','Colegio_adventista@pr.gov.br', '21/32/45');

 INSERT INTO escola (nome_instituicao,cnpj,email_contato,data_cadastro) VALUES ('schuster', '213.243.098','schuster@pr.gov.br', '12/21/59');


 DELETE FROM escola where id_escola = 1;


 CREATE TABLE mensagem_chat(
id_mensagem SERIAL PRIMARY KEY,
id_sala int not null,
id_emissor     int not null,
texto_original varchar(255) not null,
texto_traduzido   timestamp,
idioma_origem varchar(10) not null,
idioma_destino varchar (10) not null,
comtem_conteudo_inapropriado boolean,
data_envio timestamp
);


SELECT * FROM  mensagem_chat;


 INSERT INTO mensagem_chat (id_sala,id_emissor ,texto_original ,texto_traduzido, idioma_origem, idioma_destino, comtem_conteudo_inapropriado, data_envio)
  VALUES ('', '123.456.789', 'escola.consolata@gmail.com', ',03/12/32');
