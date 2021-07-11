USE sql_universidade;

-- a) Achar os ids de todos os alunos que foram lecionados por um instrutor chamado Einstein; cuide para que não haja duplicatas no resultado.
SELECT DISTINCT mentor.id_est
FROM mentor, instrutor
WHERE (instrutor.nome LIKE 'Einstein' AND instrutor.id LIKE mentor.id_inst);
    
-- b) Gere a lista de todos os departamentos, com o número total de instrutores em cada departamento.
SELECT instrutor.nome_dept, count(*) 
FROM instrutor GROUP BY 1; 
	
-- c) Achar todos os instrutores que ganham o salário mais alto (pode haver mais de um com o mesmo salário).
SELECT * FROM instrutor
WHERE salario = (SELECT MAX(salario) FROM instrutor);

-- d) Achar o número máximo de matriculaods, por todas as seções, no outono de 2019.
SELECT realiza.semestre, count(*) AS quantidade
FROM realiza 
WHERE realiza.semestre LIKE 'primeiro'
GROUP BY 1;

-- e) Achar o ID e a média de pontos de cada aluno
SELECT id, AVG(nota) AS media
FROM realiza
GROUP BY 1
    
