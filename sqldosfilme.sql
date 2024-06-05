--Consulta para mostrar o valor do MENOR tempo de duração
SELECT MIN(DURACAO_MINUTOS) AS MENOR_DURACAO
FROM ENTRETERIMENTO;


--Consulta para mostrar o valor do MAIOR tempo de duração
SELECT MAX(DURACAO_MINUTOS) AS MAIOR_DURACAO
FROM ENTRETERIMENTO;


--Consulta para mostrar qual é o filme ou série com MAIOR duração, seu tipo e o tempo em minutos
SELECT NOME, TIPO, DURACAO_MINUTOS
FROM ENTRETERIMENTO
WHERE DURACAO_MINUTOS = (SELECT MAX(DURACAO_MINUTOS) FROM ENTRETERIMENTO);


--Consulta para mostrar qual é o filme ou série com MENOR duração, seu tipo e o tempo em minutos
SELECT NOME, TIPO, DURACAO_MINUTOS
FROM ENTRETERIMENTO
WHERE DURACAO_MINUTOS = (SELECT MIN(DURACAO_MINUTOS) FROM ENTRETERIMENTO);


---------------MYSQL COUNT(), AVG() and SUM() Functions------------------------

--Consulta para mostrar a quantidade de Séries
SELECT COUNT(*) AS QUANTIDADE_DE_SERIES
FROM ENTRETERIMENTO
WHERE TIPO = 'SÉRIE';


--Consulta para mostrar a quantidade de filmes
SELECT COUNT(*) AS QUANTIDADE_DE_FILMES
FROM ENTRETERIMENTO
WHERE TIPO = 'FILME';


--Consulta para mostrar o tempo de duração média das séries
SELECT AVG(DURACAO_MINUTOS) AS MEDIA_DE_DURACAO_DAS_SERIES
FROM ENTRETERIMENTO
WHERE TIPO = 'SÉRIE';


--Consulta para SOMAR a duração (em minutos) dos filmes do Brad Pitt
SELECT SUM(DURACAO_MINUTOS) AS SOMA_DE_DURACAO_DOS_FILMES_DO_BRAD_PITT
FROM ENTRETERIMENTO
WHERE ATOR_PRINCIPAL = 'Brad Pitt ';

--Quantidade de séries que contêm a letra "n" no nome:

SELECT COUNT(*) AS `Quantidade de Séries`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'SÉRIE' AND `NOME` LIKE '%n%';

--Quantidade de filmes com a letra "o":
SELECT COUNT(*) AS `Quantidade de Filmes`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'FILME' AND `NOME` LIKE '%o%';

--Tempo de duração média das séries que começam com "w":
SELECT AVG(`DURACAO_MINUTOS`) AS `Duração Média das Séries`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'SÉRIE' AND `NOME` LIKE 'W%';


--Soma da duração em minutos dos filmes do Brad Pitt que tenham a letra "e":
SELECT SUM(`DURACAO_MINUTOS`) AS `Soma da Duração`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'FILME' AND (`ATOR_PRINCIPAL` = 'Brad Pitt' OR `ATRIZ_PRINCIPAL` = 'Brad Pitt') AND `NOME` LIKE '%e%';

--Classificação da duração em minutos dos filmes do maior para o menor que começam com a letra "s":
SELECT *
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'FILME' AND `NOME` LIKE 'S%'
ORDER BY `DURACAO_MINUTOS` DESC;
