
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

CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL ,
  senha_hash VARCHAR(255) NOT NULL,
  data_nascimento DATE NOT NULL,
  faixa_etaria VARCHAR(255) NOT NULL,
  tipo_perfil  VARCHAR(255) NOT NULL,
  fk_turma INT,
  data_cadastro TIMESTAMP,
  constraint fk_turma foreign key (fk_turma) references turma (id_turma)

);

SELECT * FROM usuario;

INSERT INTO usuario (nome, email, senha_hash, data_nascimento, faixa_etaria, tipo_perfil, fk_turma, data_cadastro) values ('ja', 'j@gmail.com', '12', '2011/05/14', '15', 'es',1, '2026/01/01');

INSERT INTO usuario (nome, email, senha_hash, data_nascimento, faixa_etaria, tipo_perfil, fk_turma, data_cadastro) values ('jat', 'jat@gmail.com', '13', '2011/05/14', '15', 'es',1, '2026/01/01');

INSERT INTO usuario (nome, email, senha_hash, data_nascimento, faixa_etaria, tipo_perfil, fk_turma, data_cadastro) values ('jati', 'jati@gmail.com', '14', '2011/05/14', '15', 'es',2, '2026/01/01');

