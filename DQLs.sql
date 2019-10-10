/* DQL - Linguagem de Consulta de Dados */

/* Mostrar dados */
SELECT * FROM aluno;
SELECT * FROM materia;

/* Mostrar dados específicos de um aluno*/
SELECT * FROM aluno WHERE IdAluno = 2;

/* Mostrar dados em uma busca com LIKE*/
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%';

/* Ordenar por nome do aluno de forma ascendente */
SELECT * FROM aluno ORDER BY Nome ASC;

/* Ordenar por nome do aluno de forma decrescente */
SELECT * FROM aluno ORDER BY Nome DESC;

/* Alterar dado(s)*/
UPDATE aluno SET
	Nome = 'Bruna Ribeiro',
	Idade = 21
WHERE IdAluno = 2;

/* Juntamos as 3 tabelas usando INNER JOIN*/
SELECT * FROM trabalho
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno

-- Deixamos somente os dados que nos interessam no momento
SELECT 
	aluno.Nome,
	aluno.Ra,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno

/* Utilizamos a função nativa COUNT para retornar o número de registros na minha tabela*/
-- Usamos o Alias "AS" para nomear a coluna
SELECT COUNT (*) AS total_registros FROM aluno;

/* Pegamos a idade máxima dos alunos*/
SELECT MAX(Idade) AS idade_maxima FROM aluno;

/* Pegamos a idade mínima dos alunos*/
SELECT MIN(Idade) AS idade_minima FROM aluno;

/* Pegamos a média de idade dos alunos*/
SELECT AVG(Idade) AS media_idade FROM aluno;

/* Pegamos a soma de idade dos alunos*/
SELECT SUM(Idade) AS idade_soma FROM aluno;

/* Juntamos todas as funções em uma única consulta*/
SELECT
	COUNT(*) AS total_registros,
	MAX(Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(Idade) AS media_idade,
	SUM(Idade) AS idade_soma
FROM aluno;

