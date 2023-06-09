
CREATE TABLE TAB_FATURAMENTO
(DATA_VENDA DATE NULL,
TOTAL_VENDA FLOAT)

CREATE TRIGGER TG_ITENS_VENDIDOS
ON [ITENS VENDIDOS]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

DELETE FROM TAB_FATURAMENTO;

INSERT INTO TAB_FATURAMENTO (DATA_VENDA, TOTAL_VENDA)
SELECT A.DATA AS DATA_VENDA, SUM(B.QUANTIDADE * B.[PRE�O]) AS TOTAL_VENDA
FROM NOTAS A INNER JOIN [ITENS VENDIDOS] B
ON A.N�MERO = B.N�MERO
GROUP BY A.DATA;

END;

INSERT INTO [NOTAS] ([N�MERO], DATA, CPF, MATRICULA, IMPOSTO)
VALUES ('0100', '2018-05-15', '1471156710', '235', 0.18)

INSERT INTO [ITENS VENDIDOS] ([N�MERO],[C�DIGO],[QUANTIDADE],[PRE�O])
VALUES ('0100', '1000889', 100, 1)
INSERT INTO [ITENS VENDIDOS] ([N�MERO],[C�DIGO],[QUANTIDADE],[PRE�O])
VALUES ('0100', '1002334', 100, 1)


SELECT * FROM TAB_FATURAMENTO

INSERT INTO [NOTAS] ([N�MERO], DATA, CPF, MATRICULA, IMPOSTO)
VALUES ('0101', '2018-05-15', '1471156710', '235', 0.18)

INSERT INTO [ITENS VENDIDOS] ([N�MERO],[C�DIGO],[QUANTIDADE],[PRE�O])
VALUES ('0101', '1000889', 100, 1)
INSERT INTO [ITENS VENDIDOS] ([N�MERO],[C�DIGO],[QUANTIDADE],[PRE�O])
VALUES ('0101', '1002334', 100, 1)

INSERT INTO [NOTAS] ([N�MERO], DATA, CPF, MATRICULA, IMPOSTO)
VALUES ('0102', '2018-05-16', '1471156710', '235', 0.18)

INSERT INTO [ITENS VENDIDOS] ([N�MERO],[C�DIGO],[QUANTIDADE],[PRE�O])
VALUES ('0102', '1000889', 100, 1.5)
INSERT INTO [ITENS VENDIDOS] ([N�MERO],[C�DIGO],[QUANTIDADE],[PRE�O])
VALUES ('0102', '1002334', 200, 1)

DELETE FROM [ITENS VENDIDOS] WHERE [N�MERO] = '0102' AND [C�DIGO] = '1002334'

UPDATE [ITENS VENDIDOS] SET [QUANTIDADE] = 300 WHERE [N�MERO] = '0102' AND [C�DIGO] = '1000889'







CREATE TRIGGER TG_CLIENTES_IDADE
ON [CLIENTES]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
UPDATE [CLIENTES] SET [IDADE] = 
    DATEDIFF(YEAR, [DATA NASCIMENTO], GETDATE());
END;

