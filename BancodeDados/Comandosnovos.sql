-- CRIAR O BANCO DE DADOS
CREATE DATABASE faculdade;

-- USAR O BANCO DE DADOS
USE faculdade;

-- CRIAR A TABELA ALUNO
CREATE TABLE Aluno (
-- REGRA DE NEGÓCIO, 
-- NORMALMENTE A CHAVE PRIMÁRIO É DO TIPO INT(INTEIRO)
ra CHAR(8) PRIMARY KEY,
nome VARCHAR(100),
bairro VARCHAR(50),
email VARCHAR(60)
);

-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- INSERIR DADOS NA TABELA ALUNO
INSERT INTO Aluno VALUES 
	('01221031', 'Maciel', 'Pirituba', 'maciel@sptech.school');
    
-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- INSERIR VÁRIOS ALUNOS NO MESMO COMANDO
INSERT INTO Aluno VALUES 
	('01221141', 'Matheus', 'Paraíso', 'matheus@sptech.school'),
    ('01221116', 'Yuri', 'Vila Alpina', 'yuri@sptech.school'),
    ('01221117', 'Nildo', 'Consolação', 'nildo@sptech.school');
    
-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- EXIBIR OS DADOS DOS ALUNOS EM ORDEM CRESCENTE, PELO NOME
SELECT * FROM Aluno ORDER BY nome;

-- EXIBIR OS DADOS COM OS CAMPOS ALTERNADOS
SELECT ra, nome, bairro, email FROM Aluno;
SELECT ra, nome, email, bairro FROM Aluno;

-- EXIBIR O BAIRRO DOS ALUNOS ORDENADOS PELO NOME
SELECT bairro FROM Aluno ORDER BY nome;

-- ORDEM DECRESCENTE
SELECT * FROM Aluno ORDER BY nome DESC;
SELECT * FROM Aluno ORDER BY ra DESC;

-- EXIBIR APENAS OS DADOS DO ALUNO Matheus
SELECT * FROM Aluno WHERE nome = 'Matheus';
SELECT * FROM Aluno WHERE ra = '01221141';
SELECT * FROM Aluno WHERE bairro = 'Paraíso';
SELECT * FROM Aluno WHERE email = 'matheus@sptech.school';

-- EXIBIR OS NOMES QUE TERMINAM COM s
SELECT nome FROM Aluno WHERE nome LIKE '%s';
SELECT nome FROM Aluno WHERE nome LIKE 'Y%';
SELECT nome FROM Aluno WHERE nome LIKE '%u%';
SELECT nome FROM Aluno WHERE nome LIKE '_u%';
SELECT nome FROM Aluno WHERE nome LIKE '%l_';

INSERT INTO Aluno VALUES ('01221999', 'Samuel', null, null);

-- ATUALIZAR O BAIRRO DO SAMUEL
UPDATE Aluno SET bairro = 'Centro' WHERE ra = '01221999';
SELECT * FROM Aluno;

update Aluno set email = 'samuel@sptech.school' where
 ra = '01221999';
 
-- EXCLUIR O ALUNO NILDÃO
DELETE FROM Aluno WHERE ra = '01221117'; 

-- EXCLUIR A TABELA ALUNO
-- DROP TABLE Aluno;



-- Aula 03 - mais comandos sql
/* revisão aula passada
create; databse
insert; into 
select
select com where
select com where e like 
select com order by
update aluno set campoAtualizado = ????? where id = ??????;
delete from nomedatabela where ID= ???,
drop table
desc nometable; descreve os campos da tabela
*/
-- Descreve oss campos da tabela
desc aluno;
DESCRIBE aluno;


-- select * from aluno order by nome



-- aula de hoje
-- ALTER TABLE
-- Atualiza/ modifica a estrutura da tabela
-- INT aceita 10 digitos 0 ao 9

create table Empresa (
id INT PRIMARY KEY auto_increment,
nome VARCHAR (100),
responsavel VARCHAR(80)
);
-- insere valores na tabela Empresa
-- INSET INTO nomeTabela VALUES (campo1,campo2,campo3....);

INSERT INTO Empresa VALUES (null,'C6 Bank', 'Paulo');

SELECT * FROM Empresa;

-- inserir dados na tabela Empresa, informando os campos

INSERT INTO Empresa (nome, responsavel) VALUES
	('Safra' , 'Flanklin');
    
-- ALTER TABLE 
-- renomear campo
ALTER TABLE Empresa RENAME COLUMN nome TO nomeEmpresa;

DESC Empresa;
SELECT * FROM Empresa;
-- ALTER TABLE ADD COLUMN
-- INTEIRO = INT 10 DIGITOS
-- FLOAT - FLOAT 7 DIGITOS 32 BITS
-- DOUBLE = DOUBLE 15 DIGITOS 64 BITS
-- DECIMAL = DECIMAL (10,2) 28 DIGITOS 128 BITS
-- EXEMPLO DECIMAl 12345678,90
-- EXEMPLO DECIMAL (5,3) 12,345


ALTER TABLE Empresa ADD COLUMN salario DECIMAL (10,2);

DESC Empresa;
SELECT * FROM Empresa;

-- ATUALIZAR OS SALARIOS DOS RESPONSAVEIS

UPDATE Empresa SET salario = 1.50 WHERE id = 1;
UPDATE Empresa SET salario = 150 WHERE id = 2;

-- ATUALIZAR VARIOS REGISTROS COM APENAS UM COMANDO
UPDATE Empresa SET salario = 2.99 
	WHERE id = 1 OR id = 2;
-- UTILIZANDO IN
UPDATE Empresa SET salario = 5.99 WHERE id IN (1,2);

-- add column
-- rename column
-- drop column
ALTER TABLE Empresa DROP COLUMN salario;
DESC Empresa;
SELECT*FROM Empresa;

-- MODIFY COLUMN
ALTER TABLE Empresa MODIFY COLUMN nomeEmpresa VARCHAR(75);

-- TRUNCATE TALE
-- LIMPA OS REGISTROS E CONFIGURAÇÔES DA TABELA 

SELECT * FROM Empresa;
DELETE FROM Empresa WHERE id = 1 or id = 2;

INSERT INTO Empresa VALUES 
	(null, 'BandTec International' , null);
TRUNCATE TABLE Empresa;

INSERT INTO Empresa VALUES 
	(null, 'C6 Bank' , null),
	(null, 'Safra' , null);
    
SELECT * FROM Empresa;

DELETE FROM Empresa WHERE id = 2;

INSERT INTO Empresa (nomeEmpresa) VALUES ('Accenture');
INSERT INTO Empresa (id , nomeEmpresa) VALUES ( 2 , 'Deloitte');

ALTER TABLE Empresa ADD COLUMN dtInicio DATE;
 -- DATE ('YYYY-MN-DD' )
-- DATETIME ('YYYY-MN-DD' HN:MN:SS' )
-- TIME ('HS:MN:SS')

UPDATE Empresa SET dtInicio = '2016-01-01' WHERE id = 1;
SELECT * FROM Empresa;

ALTER TABLE Empresa MODIFY COLUMN dtInicio DATETIME;
UPDATE Empresa SET dtInicio = '2022-02-23 11:49:00'
	WHERE id = 3;
    
ALTER TABLE Empresa DROP COLUMN dtInicio;