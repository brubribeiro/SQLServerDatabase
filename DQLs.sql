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

