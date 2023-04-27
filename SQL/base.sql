-- 0) TIPOS DE DADOS EM SQL e SEUS TAMANHOS (O - Infinito)
	-- a) Texto >> VARCHAR (1000 = Tamanho)
	-- b) Números >> INT (x)
	-- c) Datas >>  TIMESTAMP (Mais Preciso) / DATE (Data)


-- 0) CRUD:
	-- C >> Create = INSERT
    -- R >> Read = SELECT {WHERE = ONDE}
    -- U >>  Update = UPDATE
	-- D >> Delete =
  
------------------------------------------------------------------------------------------------
    
-- 2) CRIAR BANCO
CREATE DATABASE banco;

------------------------------------------------------------------------------------------------

-- 3) REMOÇÃO DE UM BANCO
DROP DATABASE banco;

------------------------------------------------------------------------------------------------

-- 4) CRIANDO UM NOVO BANCO + DIZENDO QUE ESTOU USANDO O BANCO
CREATE DATABASE bancoDois;
USE bancoDois;

------------------------------------------------------------------------------------------------

-- 5) CRIAÇÃO DE TABELA
CREATE TABLE minhaTabela (
	-- CRIANDO COLUNAS (Tipo; Limite de Caracteres;)
    nome VARCHAR(100),
    salario INT,
    data_nascimento DATE
);

------------------------------------------------------------------------------------------------

-- 6) REMOÇÃO DE TABELA
DROP TABLE minhaTabela;

------------------------------------------------------------------------------------------------

-- 07) ALTERAÇAO DE TABELA
	-- a) ALTERAR
		-- ALTEREI A TABELA "pessoas" ADICIONANDO A COLUNA "profissão"
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR (255);


------------------------------------------------------------------------------------------------

-- 08) SELEÇÃO DE TABELA:
	-- a) CRIANDO O BANCO DE DADOS "pessoas"
    -- b) CRIANDO A TABELA "pessoas" COM AS COLUNAS "nome", "salario" e "data de nascimento"
	-- c) SELECIONE TODOS OS DADOS DA TABELA "pessoas" COM O SELECT
CREATE DATABASE rh;
CREATE TABLE pessoas(
 nome VARCHAR(100),
    salario INT,
    data_nascimento DATE
);
SELECT * FROM pessoas;

------------------------------------------------------------------------------------------------

-- 09) SELECIONANDO DADOS ESPECIFICOS PARA EXIBIRI:
	-- a) SELECIONANDO "nome" DA TABELA "pessoas" DO BANCO "rh"
    SELECT nome FROM pessoas;
    
	-- b) SELECIONANDO "nome" E "salario"
------------------------------------------------------------------------------------------------
-- 10) INSERÇÃO DE DADOS NA TABELA
	-- INSERINDO DADOS NA TABELA "pessoas"
		-- USANDO O INSERT INTO PARA INSERIR NOME, SALARIO, DATA DE NASCIMENTO E PROFISSÃO
        -- NA MESMA ORDEM USANDO O COMANDO VALUES PARA DIZER OS NOVOS VALORES
INSERT INTO pessoas (nome, salario, data_nascimento, profissao)
VALUES ("Joaozinho", 1000.00, "1980-04-20", "Programador");

	-- CONSULTANDO AGORA AS PESSOAS DE DENTRO DA TABELA "pessoas"
    SELECT nome FROM pessoas;
    
    -- CONSULTANDO TUDO DA TABELA PESSOAS:
    SELECT * FROM pessoas;
    
------------------------------------------------------------------------------------------------


-- 11) SELEÇOES ESPECIFICAS (WHERE):
	-- SELECIONAR A COLUNA, DA TABELA "pessoas", E FILTRAR MOSTRANDO SOMENTE QUEM TEM "salario" MAIOR QUE "X":
SELECT * FROM pessoas
WHERE salario > 900;

	-- AGORA O FILTRO É POR NOME:
SELECT * FROM pessoas
WHERE nome = "Ciclano";


------------------------------------------------------------------------------------------------

-- 12) erro PRIME KEY & UPDATE DE DADOS:
	--
    --
SET SQL_SAFE_UPDATES = 0;
UPDATE pessoas SET salario = 3000 WHERE nome = "Ciclano";
	--
SELECT * FROM pessoas
WHERE nome = "Ciclano";
------------------------------------------------------------------------------------------------


