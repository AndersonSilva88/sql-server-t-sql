-- CRIANDO BANCO DE DADOS
CREATE DATABASE SUCOS_VENDAS;

-- CRIANDO TABELA DE CLIENTES
CREATE TABLE [TABELA DE CLIENTES](
	[CPF] [VARCHAR] (14) ,
	[NOME] [VARCHAR] (100) ,
	[ENDERECO 1] [VARCHAR] (150) ,
	[ENDERECO 2] [VARCHAR] (150) ,
	[BAIRRO] [VARCHAR] (50) ,
	[CIDADE] [VARCHAR] (50) ,
	[ESTADO] [VARCHAR] (2) ,
	[CEP] [VARCHAR] (8) ,
	[DATA DE NASCIMENTO] [DATE] , 
	[IDADE] [SMALLINT] ,
	[SEXO] [VARCHAR] (1) ,
	[LIMETE DE CREDITO] [MONEY] ,
	[VOLUME DE COMPRA] [FLOAT] ,
	[PRIMEIRA COMPRA] [BIT]

)
--- APAGANDO TABELA 
DROP TABLE [TABELA DE CLIENTES 2]  


---INSERIR INFORMACOES NA TABELA
INSERT INTO [TABELA DE PRODUTOS] ([CODIGO DO PRODUTO],[NOME DO PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO DE LISTA])
VALUES ('1040107','LIGHT - 350 ML - MELANCIA','LATA','350 ML', 'MELANCIA', 4.56)

INSERT INTO [TABELA DE PRODUTOS] ([CODIGO DO PRODUTO],[NOME DO PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO DE LISTA])
VALUES ('1037797','CLEAN - 2 LITROS - LARANJA','PET','2 LITROS', 'LARANJA', 16.01)

INSERT INTO [TABELA DE PRODUTOS] ([CODIGO DO PRODUTO],[NOME DO PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO DE LISTA])
VALUES ('1000889','SABOR DA MONTANHA - 700 ML - UVA','GARRAFA','700 ML', 'UVA', 6.31)

INSERT INTO [TABELA DE PRODUTOS] ([CODIGO DO PRODUTO],[NOME DO PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO DE LISTA])
VALUES ('1004327','VIDEIRA DO CAMPO - 1,5 LITROS - MELANCIA','PET','1,5 LITROS', 'MELANCIA', 19.51)

INSERT INTO [TABELA DE PRODUTOS] ([CODIGO DO PRODUTO],[NOME DO PRODUTO],[EMBALAGEM],[TAMANHO],[SABOR],[PRECO DE LISTA])
VALUES ('1088126','LINHA CITROS - 1 LITRO - LIMAO','PET','1 LITRO', 'LIMAO', 7.00)

--ALTERANDO INFORMACOES NA TABELA
UPDATE [TABELA DE PRODUTOS]
SET [CODIGO DO PRODUTO] = '1000889'
WHERE [NOME DO PRODUTO] = 'SABOR DA MONTANHA - 700 ML - UVA'
AND EMBALAGEM = 'GARRAFA'

-- EXCLUINDO REGISTROS NA TABELA
DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1088125'

--INSERINDO CHAVE PRIM�RIA NA TABELA 'PRIMARY KEY' OBS CHAVE PRIMARIA N�O PODE SER NULA
ALTER TABLE [TABELA DE PRODUTOS]
ADD CONSTRAINT PK_PRODUTOS
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO])

-- ALTERANDO PROPRIEDADE DA COLUNA
ALTER TABLE [TABELA DE PRODUTOS]
ALTER COLUMN [CODIGO DO PRODUTO] 
VARCHAR(10) NOT NULL
-- ALTERANDO PROPRIEDADE DA COLUNA
ALTER TABLE [TABELA DE CLIENTES]
ALTER COLUMN [CPF]
VARCHAR(14) NOT NULL
--INSERINDO CHAVE PRIM�RIA NA TABELA 
ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])

-- INSERINDO INFORMA��ES NA TABELA DE CLIENTES
INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDERECO 1]
           ,[ENDERECO 2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMETE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('12345678912',
            'CLODOALDO SILVA',
            'RUA MAUA',
            '',
            'CENTRO',
            'CURITIBA',
            'PR',
            '83820554',
            '1987-05-13',
             35,
            'M',
             120000.50,
             1000,
             1)


-- INSERIR INFORMA��ES NA TABELA VENDEDORES 
INSERT INTO [TABELA DE VENDEDORES] ([MATRICULA],[NOME],[PERCENTUAL COMISSAO])
VALUES ('00233','JOS� GERALDO DA FONSECA','0.10')

INSERT INTO [TABELA DE VENDEDORES] ([MATRICULA],[NOME],[PERCENTUAL COMISSAO])
VALUES ('00235','M�RCIO ALMEIDA SILVA','0.08')

INSERT INTO [TABELA DE VENDEDORES] ([MATRICULA],[NOME],[PERCENTUAL COMISSAO])
VALUES ('00236','CL�UDIO MORAIS','0.08')

UPDATE [TABELA DE VENDEDORES]
SET [PERCENTUAL COMISSAO] = '0.11'
WHERE MATRICULA = '00238'

UPDATE [TABELA DE VENDEDORES]
SET NOME = 'JOS� GERALDO DA FONSECA JUNIOR'
WHERE MATRICULA = '00233'

DELETE FROM [TABELA DE VENDEDORES]
WHERE MATRICULA = '00233'

-- ALTERANDO PROPRIEDADE DA COLUNA
ALTER TABLE [TABELA DE VENDEDORES]
ALTER COLUMN [MATRICULA]
VARCHAR(5) NOT NULL

-- INSERINDO PRIMARY KEY
ALTER TABLE [TABELA DE VENDEDORES]
ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA])

ALTER TABLE [TABELA DE VENDEDORES]
ADD [DATA DE ADMISSAO] DATE

-- DELETANDO TABELA
DROP TABLE [TABELA DE VENDEDORES]

-- CRIANDO TABELA VENDEDORES
CREATE TABLE [TABELA DE VENDEDORES] (
	[MATRICULA] VARCHAR(5) PRIMARY KEY NOT NULL,
	[NOME] VARCHAR(100),	
	[PERCENTUAL COMISS�O] FLOAT,
	[DATA ADMISS�O] DATE,
	[DE FERIAS] BIT
)

-- INSERINDO INFORMA��ES NA TABELA DE VENDEDORES
INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00235','M�rcio Almeida Silva','2014-08-15',0.08,0)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00236','Cl�udia Morais','2013-09-17',0.08,1)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00237','Roberta Martins','2017-03-18',0.11,1)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00238','Pericles Alves','2016-08-21',0.11,0)

SELECT * FROM [TABELA DE PRODUTOS]

SELECT * FROM [TABELA DE VENDEDORES]

SELECT * FROM [TABELA DE CLIENTES]

SELECT * FROM [ITENS NOTAS FISCAIS]

SELECT * FROM [NOTAS FISCAIS]

SELECT [NOME], [MATRICULA] FROM [TABELA DE VENDEDORES] 

SELECT * FROM [TABELA DE VENDEDORES] WHERE NOME = 'Cl�udia Morais'

SELECT * FROM [TABELA DE VENDEDORES] WHERE [PERCENTUAL COMISS�O] > 0.10
 
SELECT * FROM [TABELA DE VENDEDORES] WHERE YEAR([DATA ADMISS�O]) >= 2016

SELECT * FROM [ITENS NOTAS FISCAIS]
WHERE [QUANTIDADE] > 60 AND [PRE�O] <= 3

SELECT * FROM [TABELA DE CLIENTES] WHERE NOME LIKE '%MATTOS'

SELECT DISTINCT BAIRRO FROM [TABELA DE CLIENTES]
WHERE CIDADE = 'Rio de Janeiro'

SELECT TOP 3 * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'LARANJA'

SELECT DISTINCT TOP 3 * FROM [TABELA DE PRODUTOS]
  
SELECT TOP 10 * FROM [NOTAS FISCAIS] WHERE [DATA] = '2017-01-01'

--ORDERNA��O
SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PRE�O DE LISTA]

SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [PRE�O DE LISTA] DESC

SELECT * FROM [TABELA DE PRODUTOS] ORDER BY [NOME DO PRODUTO]

SELECT [EMBALAGEM], [NOME DO PRODUTO] FROM [TABELA DE PRODUTOS] ORDER BY [EMBALAGEM],[NOME DO PRODUTO]

SELECT * FROM [TABELA DE PRODUTOS] 
WHERE [NOME DO PRODUTO] = 'Linha Refrescante - 1 Litro - Morango/Lim�o'

SELECT * FROM [ITENS NOTAS FISCAIS]
WHERE [CODIGO DO PRODUTO] = '1101035'
ORDER BY QUANTIDADE DESC

--AGRUPAMENTO
SELECT * FROM [TABELA DE CLIENTES] 

SELECT COUNT(*) FROM [ITENS NOTAS FISCAIS]
WHERE [CODIGO DO PRODUTO] = '1101035'
AND QUANTIDADE = 99

SELECT CPF, COUNT(*) FROM [NOTAS FISCAIS]
WHERE YEAR(DATA)= '2016'
GROUP BY CPF
HAVING COUNT(*) > 2000

--CASE WHEN
SELECT [NOME DO PRODUTO],
CASE 
	WHEN [PRE�O DE LISTA] >= 12 THEN 'PRODUTO CARO'
	WHEN [PRE�O DE LISTA] >= 7 AND [PRE�O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END
FROM
[TABELA DE PRODUTOS]

--JOIN NEW
SELECT * FROM [TABELA DE VENDEDORES] TV
INNER JOIN [NOTAS FISCAIS] NF
ON TV.MATRICULA = NF.MATRICULA

--- INNER JOIN DAS ANTIGAS
SELECT * FROM [TABELA DE VENDEDORES] TV, [NOTAS FISCAIS] NF
WHERE TV.MATRICULA = NF.MATRICULA

SELECT TV.MATRICULA, TV.NOME, COUNT(*) FROM [TABELA DE VENDEDORES] TV
INNER JOIN [NOTAS FISCAIS] NF
ON TV.MATRICULA = NF.MATRICULA
GROUP BY TV.MATRICULA, TV.NOME


SELECT YEAR(DATA), SUM(QUANTIDADE * [PRE�O]) AS FATURAMENTO  FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA)

---LEFT JOIN

SELECT [TABELA DE CLIENTES].[NOME], COUNT(*) FROM [TABELA DE CLIENTES] INNER JOIN 
[NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY [TABELA DE CLIENTES].[NOME]

SELECT [TABELA DE CLIENTES].[NOME], COUNT(*) FROM [TABELA DE CLIENTES] LEFT JOIN 
[NOTAS FISCAIS] ON [TABELA DE CLIENTES].CPF = [NOTAS FISCAIS].CPF
GROUP BY [TABELA DE CLIENTES].[NOME]

SELECT NOME, CONCAT([ENDERECO 1], ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM [TABELA DE CLIENTES]

SELECT GETDATE()


SELECT NOME, DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE()) AS IDADE
FROM [TABELA DE CLIENTES]

SELECT YEAR(DATA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRE�O))) 
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)


SELECT CONVERT(VARCHAR, GETDATE(), 103)


SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PRE�O]))), ' no ano ',   CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA) = 2016
GROUP BY TC.NOME, YEAR(DATA)


SELECT AUX1.TAMANHO, AUX1.ANO, CONVERT(DECIMAL(15,2), AUX1.FATURAMENTO) AS FATURAMENTO, 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2),(AUX1.FATURAMENTO/AUX2.TOTAL) * 100)) + ' %' 
AS PERCENTUAL FROM
(SELECT TP.TAMANHO, YEAR(NF.DATA) AS ANO, SUM (INF.QUANTIDADE * INF.PRE�O) AS FATURAMENTO
FROM [ITENS NOTAS FISCAIS] INF INNER JOIN [TABELA DE PRODUTOS] TP
ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF 
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY TP.TAMANHO, YEAR(NF.DATA)) AUX1
INNER JOIN (SELECT YEAR(NF.DATA) AS ANO, SUM (INF.QUANTIDADE * INF.PRE�O) AS TOTAL
FROM [ITENS NOTAS FISCAIS] INF INNER JOIN [TABELA DE PRODUTOS] TP
ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF 
ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY YEAR(NF.DATA)) AUX2
ON AUX1.ANO = AUX2.ANO
ORDER BY AUX1.FATURAMENTO DESC


UPDATE [dbo].[CLIENTES]
    SET [VOLUME COMPRA] = [VOLUME COMPRA] * 1.2
WHERE [ESTADO] = 'RJ'