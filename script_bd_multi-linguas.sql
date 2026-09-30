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

 INSERT INTO escola (nome_instituicao,cnpj,email_contato) VALUES ('consolata', '123.456.789', 'escola.consolata@gmail.com');

 INSERt INTO escola (nome_instituicao,cnpj,email_contato) VALUES ('francisco_lima', '25050707','franciscolima@pr.gov.br');

INSERt INTO escola (nome_instituicao,cnpj,email_contato) VALUES ('Colegio_adventista', '.123.432.567','Colegio_adventista@pr.gov.br');
