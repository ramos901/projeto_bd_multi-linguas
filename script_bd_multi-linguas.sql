
CREATE TABLE escola(
  id_escola SERIAL PRIMARY KEY,
  nome_instituicao varchar(150) not null,
  cnpj             varchar(18),
  email_contato    varchar(100) not null,
  data_cadastro    timestamp

);

SELECT * FROM escola;

INSERT INTO escola (nome_instituicao, cnpj, email_contato) VALUES ('consolata', '123.345.56', 'escola.consolata@gmail.com');

INSERT INTO escola (nome_instituicao, cnpj, email_contato) VALUES ('consolata', '123.345.566', 'cr7.consolata@gmail.com');

INSERT INTO escola (nome_instituicao, cnpj, email_contato) VALUES ('consolata', '098.45.56', 'messi.consolata@gmail.com');




CREATE TABLE recomendacao_vocabulario(
  id_recomendacao SERIAL PRIMARY KEY,
  fk_usuario int NOT NULL,
  palavra_expressao varchar(100) NOT NULL,
  traducao varchar(100) NOT NULL,
  frequencia_uso int,
  sugeriada_por_nlp boolean,
  data_ultima_ocorrencia timestamp, 
  constraint fk_usuario foreign key (fk_usuario)references usuario (id_usuario)

);
SELECT * FROM recomendacao_vocabulario;
INSERT INTO recomendacao_vocabulario(fk_usuario, palavra_expressao, traducao) values (2,'TEXTO','MAIS TEXTO');

INSERT INTO recomendacao_vocabulario(fk_usuario, palavra_expressao, traducao) values (3,'TEXTO','MAIS TEXTO');

INSERT INTO recomendacao_vocabulario(fk_usuario, palavra_expressao, traducao) values (1,'TEXTO','MAIS TEXTO');

