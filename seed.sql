-- INICIO SEED DE SALA
  --  numero_sala int NOT NULL,
  --  predio int,
  --  capacidade int,
INSERT INTO `sala` VALUES (1, 2, 30);
INSERT INTO `sala` VALUES (2, 2, 35);
INSERT INTO `sala` VALUES (3, 1, 35);
INSERT INTO `sala` VALUES (4, 2, 32);
INSERT INTO `sala` VALUES (5, 2, 32);
INSERT INTO `sala` VALUES (6, 2, 50);
INSERT INTO `sala` VALUES (7, 3, 30);
INSERT INTO `sala` VALUES (8, 3, 35);
INSERT INTO `sala` VALUES (9, 3, 35);
INSERT INTO `sala` VALUES (10, 4, 100);
INSERT INTO `sala` VALUES (11, 1, 30);
INSERT INTO `sala` VALUES (12, 2, 35);
INSERT INTO `sala` VALUES (13, 1, 35);
INSERT INTO `sala` VALUES (14, 2, 32);
INSERT INTO `sala` VALUES (15, 2, 32);
INSERT INTO `sala` VALUES (16, 2, 50);
INSERT INTO `sala` VALUES (17, 3, 30);
INSERT INTO `sala` VALUES (18, 3, 35);
INSERT INTO `sala` VALUES (19, 3, 35);
INSERT INTO `sala` VALUES (20, 4, 100);
-- FIM SEED DE SALA

-- INICIO SEED DE DEPARTAMENTO
  -- nome_dept varchar(20) not NULL,
  -- predio int,
  -- orcamento double,
INSERT INTO `departamento` VALUES ('C. Computacao', 2, 40000);
INSERT INTO `departamento` VALUES ('E. Alimentos', 1, 38000);
INSERT INTO `departamento` VALUES ('Pedagogia', 2, 28000);
INSERT INTO `departamento` VALUES ('Economia', 3, 28000);
INSERT INTO `departamento` VALUES ('Zoologia', 1, 37500);
-- FIM SEED DE DEPARTAMENTO

-- INICIO SEED DE CURSO
  -- id_curso int not NULL,
  -- titulo varchar(20),
  -- nome_dept varchar(20), -- FK departamento
  -- creditos double, 
INSERT INTO `curso` VALUES (1, 'Matematica Discreta', 'C. Computacao', 4.5);
INSERT INTO `curso` VALUES (2, 'Cal. 1 p/ Computacao', 'C. Computacao', 5);
INSERT INTO `curso` VALUES (3, 'Cal. 2 p/ Computacao', 'C. Computacao', 4);
INSERT INTO `curso` VALUES (4, 'POO', 'C. Computacao', 6.5);
INSERT INTO `curso` VALUES (5, 'Banco de Dados', 'C. Computacao', 2.5);
INSERT INTO `curso` VALUES (6, 'Calculo 1', 'E. Alimentos', 5);
INSERT INTO `curso` VALUES (7, 'Calculo 2', 'E. Alimentos', 4.5);
INSERT INTO `curso` VALUES (8, 'Calculo 3', 'E. Alimentos', 3);
INSERT INTO `curso` VALUES (9, 'Edu. Paulo Freiriana', 'Pedagogia', 4);
INSERT INTO `curso` VALUES (10, 'Física 1', 'E. Alimentos', 2);
INSERT INTO `curso` VALUES (11, 'Física 2', 'E. Alimentos', 2);
INSERT INTO `curso` VALUES (12, 'Física 3', 'C. Computação', 3);
INSERT INTO `curso` VALUES (13, 'Física 4', 'C. Computação', 4.5);
-- FIM SEED DE CURSO

-- INICIO SEED DE INSTRUTOR
  --   id int not NULL,
  --   nome varchar(15),
  --   nome_dept varchar(20), -- FK departamento
  --   salario double, 
INSERT INTO `instrutor` VALUES (1, 'Einstein', 'C. Computacao', 100000);
INSERT INTO `instrutor` VALUES (2, 'Priscila', 'C. Computacao', 100000);
INSERT INTO `instrutor` VALUES (3, 'Dalinton', 'C. Computacao', 20550);
INSERT INTO `instrutor` VALUES (4, 'Alvaro', 'E. Alimentos', 20100.50);
INSERT INTO `instrutor` VALUES (5, 'Joao', 'Pedagogia', 20100);
INSERT INTO `instrutor` VALUES (6, 'Leticia', 'Zoologia', 22100);
INSERT INTO `instrutor` VALUES (7, 'Luiza', 'Zoologia', 27100);
INSERT INTO `instrutor` VALUES (8, 'Thays', 'C. Computacao', 27800);
INSERT INTO `instrutor` VALUES (9, 'NewTon', 'E. Alimentos', 27100);
INSERT INTO `instrutor` VALUES (10, 'Gauss', 'C. Computacao', 100000);
INSERT INTO `instrutor` VALUES (11, 'Heisenberg', 'Zoologia', 27100);
INSERT INTO `instrutor` VALUES (12, 'Schrödinger', 'C. Computacao', 27800);
INSERT INTO `instrutor` VALUES (13, 'Ada Lovelace', 'C. Computacao', 27800);
-- FIM SEED DE INSTRUTOR

-- INICIO SEED DE PERIODO
  --   id_periodo int not NULL,
  --   dia DATE not NULL, 
  --   hora_inicial TIME not NULL,
  --   hora_final TIME,
INSERT INTO `periodo` VALUES (1, DATE('2019-07-13'), TIME('08:00'), TIME('08:50'));
INSERT INTO `periodo` VALUES (2, DATE('2019-03-14'), TIME('09:00'), TIME('10:30'));
INSERT INTO `periodo` VALUES (3, DATE('2019-03-13'), TIME('11:00'), TIME('12:30'));
INSERT INTO `periodo` VALUES (4, DATE('2019-03-15'), TIME('14:00'), TIME('14:50'));
INSERT INTO `periodo` VALUES (5, DATE('2019-03-14'), TIME('15:00'), TIME('16:30'));
INSERT INTO `periodo` VALUES (6, DATE('2019-07-13'), TIME('19:00'), TIME('19:50'));
INSERT INTO `periodo` VALUES (7, DATE('2019-03-13'), TIME('20:00'), TIME('20:50'));
INSERT INTO `periodo` VALUES (8, DATE('2019-03-14'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (9, DATE('2019-03-14'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (10, DATE('2019-07-14'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (11, DATE('2019-03-14'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (12, DATE('2019-07-14'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (13, DATE('2019-03-13'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (14, DATE('2019-07-13'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (15, DATE('2019-07-13'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (16, DATE('2019-03-14'), TIME('21:00'), TIME('21:50'));
INSERT INTO `periodo` VALUES (17, DATE('2019-03-13'), TIME('08:00'), TIME('08:50'));
INSERT INTO `periodo` VALUES (18, DATE('2019-07-14'), TIME('09:00'), TIME('10:30'));
INSERT INTO `periodo` VALUES (19, DATE('2019-07-13'), TIME('11:00'), TIME('12:30'));
INSERT INTO `periodo` VALUES (20, DATE('2019-07-15'), TIME('14:00'), TIME('14:50'));
INSERT INTO `periodo` VALUES (21, DATE('2019-07-14'), TIME('15:00'), TIME('16:30'));
INSERT INTO `periodo` VALUES (22, DATE('2019-03-13'), TIME('19:00'), TIME('19:50'));
INSERT INTO `periodo` VALUES (23, DATE('2019-07-13'), TIME('20:00'), TIME('20:50'));
INSERT INTO `periodo` VALUES (24, DATE('2019-07-14'), TIME('21:00'), TIME('21:50'));
-- FIM SEED DE PERIODO

-- INICIO SEED DE SECAO
  -- id_sec int not NULL, -- chave1 da chave composta
  -- id_curso int not NULL, -- chave2 da chave composta que é tbm FK de curso
  -- semestre varchar(6) not NULL, -- chave3 da chave composta
  -- predio int,
  -- numero_sala int, -- FK de sala
  -- id_periodo int, -- FK de periodo
INSERT INTO `secao` VALUES (1, 1, 'primeiro', 2, 4, 5); -- Mat. Discreta (C.C)
INSERT INTO `secao` VALUES (2, 4, 'primeiro', 2, 5, 7); -- POO (C.C)
INSERT INTO `secao` VALUES (3, 2, 'primeiro', 2, 6, 8); -- Calc 1 (C.C)
INSERT INTO `secao` VALUES (4, 9, 'primeiro', 2, 4, 4); -- Ed. Paulo Freire (Ped)
INSERT INTO `secao` VALUES (5, 6, 'segundo', 1, 2, 1); -- Calc 1 (E.A)
INSERT INTO `secao` VALUES (6, 7, 'primeiro', 1, 2, 2); -- Calc 2 (E.A)
INSERT INTO `secao` VALUES (7, 5, 'segundo', 2, 4, 6); -- BD (C.C)
INSERT INTO `secao` VALUES (8, 8, 'primeiro', 1, 3, 3); -- Calc 3 (E.A)
INSERT INTO `secao` VALUES (9, 3, 'primeiro', 2, 3, 9);
INSERT INTO `secao` VALUES (10, 10, 'segundo', 2, 10, 11);
INSERT INTO `secao` VALUES (11, 13, 'primeiro', 3, 15, 10);
INSERT INTO `secao` VALUES (12, 11, 'segundo', 1, 16, 12);
INSERT INTO `secao` VALUES (13, 11, 'primeiro', 2, 17, 13);
INSERT INTO `secao` VALUES (14, 9, 'segundo', 2, 18, 15);
INSERT INTO `secao` VALUES (15, 12, 'primeiro', 1, 19, 16);
INSERT INTO `secao` VALUES (16, 12, 'segundo', 1, 16, 14);
INSERT INTO `secao` VALUES (17, 13, 'segundo', 2, 20, 5); -- 1 Segund semestre
INSERT INTO `secao` VALUES (18, 8, 'segundo', 2, 17, 7); -- 2 Segund semestre
INSERT INTO `secao` VALUES (19, 7, 'segundo', 2, 6, 8); -- 3 Segund semestre
INSERT INTO `secao` VALUES (20, 9, 'segundo', 2, 4, 4); -- 4 Segund semestre
INSERT INTO `secao` VALUES (21, 1, 'segundo', 1, 2, 1); -- 5 primeiro semestre
INSERT INTO `secao` VALUES (22, 6, 'primeiro', 1, 1, 2); -- 6 Segund semestre
INSERT INTO `secao` VALUES (23, 5, 'primeiro', 2, 4, 6); -- 7 primeiro semestre
INSERT INTO `secao` VALUES (24, 4, 'segundo', 1, 3, 3); -- 8 Segund semestre
-- FIM SEED DE SECAO

-- INICIO SEED DE MINISTRA
  -- id int not NULL, -- chave1 da chave composta que é tbm FK de instrutor
  -- id_curso int not NULL, -- chave2 da chave composta que é tbm FK de secao
  -- id_sec int not NULL, -- chave3 da chave composta que é tbm FK de secao
  -- semestre varchar(6) not NULL, -- chave4 da chave composta que é tbm FK de secao
  -- ano YEAR not NULL, 
INSERT INTO `ministra` VALUES (1, 13, 11, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (2, 5, 7, 'segundo', '2019');
INSERT INTO `ministra` VALUES (8, 4, 2, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (4, 6, 5, 'segundo', '2019');
INSERT INTO `ministra` VALUES (5, 9, 4, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (1, 8, 8, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (9, 10, 10, 'segundo', '2019');
INSERT INTO `ministra` VALUES (10, 1, 1, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (12, 12, 16, 'segundo', '2019');
INSERT INTO `ministra` VALUES (13, 3, 9, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (12, 13, 17, 'segundo', '2019');
INSERT INTO `ministra` VALUES (4, 5, 23, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (13, 4, 24, 'segundo', '2019');
INSERT INTO `ministra` VALUES (2, 6, 22, 'primeiro', '2019');
INSERT INTO `ministra` VALUES (1, 9, 20, 'segundo', '2019');
INSERT INTO `ministra` VALUES (5, 8, 18, 'segundo', '2019');
INSERT INTO `ministra` VALUES (9, 1, 21, 'segundo', '2019');
INSERT INTO `ministra` VALUES (1, 12, 15, 'primeiro', '2019');

-- FIM SEED DE MINISTRA

-- INICIO SEED DE ALUNO
  -- id int not NULL, 
  -- nome varchar(15),
  -- nome_dept varchar(20), -- FK departamento
  -- tot_cred double,
INSERT INTO `aluno` VALUES (1, 'Gustavo', 'C. Computacao', 20.4);
INSERT INTO `aluno` VALUES (2, 'Abahão', 'C. Computacao', 22.5);
INSERT INTO `aluno` VALUES (3, 'Fabio', 'E. Alimentos', 30.0);
INSERT INTO `aluno` VALUES (4, 'Itamar', 'Pedagogia', 60.0);
INSERT INTO `aluno` VALUES (5, 'Maria', 'C. Computacao', 4.5);
INSERT INTO `aluno` VALUES (6, 'Joao', 'E. Alimentos', 10.2);
INSERT INTO `aluno` VALUES (7, 'Lucas', 'Zoologia', 7.5);
INSERT INTO `aluno` VALUES (8, 'Mariana', 'Pedagogia', 2.0);
INSERT INTO `aluno` VALUES (9, 'Ricardo', 'C. Computacao', 20.4);
INSERT INTO `aluno` VALUES (10, 'Mônica', 'C. Computacao', 22.5);
INSERT INTO `aluno` VALUES (11, 'Camila', 'E. Alimentos', 30.0);
INSERT INTO `aluno` VALUES (12, 'Lorena', 'Pedagogia', 60.0);
INSERT INTO `aluno` VALUES (13, 'Gabriela', 'C. Computacao', 4.5);
INSERT INTO `aluno` VALUES (14, 'Talita', 'E. Alimentos', 10.2);
INSERT INTO `aluno` VALUES (15, 'Geovana', 'Zoologia', 7.5);
INSERT INTO `aluno` VALUES (16, 'Laura', 'Pedagogia', 7.5);
-- FIM SEED DE ALUNO

-- INICIO SEED DE REALIZA
  -- id int not NULL,
  -- id_curso int not NULL, 
  -- id_sec int not NULL, 
  -- semestre varchar(6) not NULL, 
  -- ano YEAR not NULL, 
  -- nota double
INSERT INTO `realiza` VALUES (1, 4, 2, 'primeiro', '2019', 8.3);
INSERT INTO `realiza` VALUES (1, 5, 7, 'segundo', '2019', 8.3);
INSERT INTO `realiza` VALUES (2, 2, 3, 'primeiro', '2019', 7);
INSERT INTO `realiza` VALUES (2, 11, 12, 'segundo', '2019', 8.8);
INSERT INTO `realiza` VALUES (3, 8, 8, 'primeiro', '2019', 7.5);
INSERT INTO `realiza` VALUES (3, 13, 17, 'segundo', '2019', 6.6);
INSERT INTO `realiza` VALUES (4, 9, 4, 'primeiro', '2019', 10);
INSERT INTO `realiza` VALUES (4, 6, 5, 'segundo', '2019', 8.9);
INSERT INTO `realiza` VALUES (5, 7, 6, 'primeiro', '2019', 10);
INSERT INTO `realiza` VALUES (5, 5, 7, 'segundo', '2019', 6.5);
INSERT INTO `realiza` VALUES (6, 2, 3, 'primeiro', '2019', 7.7);
INSERT INTO `realiza` VALUES (6, 7, 19, 'segundo', '2019', 9.3);
INSERT INTO `realiza` VALUES (7, 12, 15, 'primeiro', '2019', 8);
INSERT INTO `realiza` VALUES (7, 4, 24, 'segundo', '2019', 4);
INSERT INTO `realiza` VALUES (8, 13, 11, 'primeiro', '2019', 3);
INSERT INTO `realiza` VALUES (8, 1, 21, 'segundo', '2019', 5.7);
INSERT INTO `realiza` VALUES (9, 6, 22, 'primeiro', '2019', 8);
INSERT INTO `realiza` VALUES (9, 4, 24, 'segundo', '2019', 4);
INSERT INTO `realiza` VALUES (10, 11, 13, 'primeiro', '2019', 3);
INSERT INTO `realiza` VALUES (10, 1, 21, 'segundo', '2019', 5.7);
INSERT INTO `realiza` VALUES (11, 7, 6, 'primeiro', '2019', 7.8);
INSERT INTO `realiza` VALUES (11, 5, 7, 'segundo', '2019', 8.3);
INSERT INTO `realiza` VALUES (12, 4, 2, 'primeiro', '2019', 8.3);
INSERT INTO `realiza` VALUES (12, 1, 21, 'segundo', '2019', 10);
INSERT INTO `realiza` VALUES (13, 8, 8, 'primeiro', '2019', 9);
INSERT INTO `realiza` VALUES (13, 9, 20, 'segundo', '2019', 7.5);
INSERT INTO `realiza` VALUES (14, 9, 4, 'primeiro', '2019', 6.6);
INSERT INTO `realiza` VALUES (14, 8, 18, 'segundo', '2019', 5);
INSERT INTO `realiza` VALUES (15, 1, 1, 'primeiro', '2019', 0);
INSERT INTO `realiza` VALUES (15, 5, 7, 'segundo', '2019', 10);
INSERT INTO `realiza` VALUES (16, 5, 23, 'primeiro', '2019', 6.5);
INSERT INTO `realiza` VALUES (16, 7, 19, 'segundo', '2019', 7.7);
-- FIM SEED DE REALIZA


-- INICIO SEED DE MENTOR
 -- id_est int NOT NULL,
 -- id_inst int,
INSERT INTO `mentor` VALUES (1, 2);
INSERT INTO `mentor` VALUES (2, 6);
INSERT INTO `mentor` VALUES (3, 4);
INSERT INTO `mentor` VALUES (4, 1);
INSERT INTO `mentor` VALUES (5, 3);
INSERT INTO `mentor` VALUES (6, 7);
INSERT INTO `mentor` VALUES (7, 5);
INSERT INTO `mentor` VALUES (8, 8);
INSERT INTO `mentor` VALUES (9, 2);
INSERT INTO `mentor` VALUES (10, 6);
INSERT INTO `mentor` VALUES (11, 4);
INSERT INTO `mentor` VALUES (12, 1);
INSERT INTO `mentor` VALUES (13, 3);
INSERT INTO `mentor` VALUES (14, 7);
INSERT INTO `mentor` VALUES (15, 5);
INSERT INTO `mentor` VALUES (16, 8);
-- FIM SEED DE MENTOR


-- INICIO SEED DE PREREQ
-- id_prereq int NOT NULL,
-- id_curso int NOT NULL,
INSERT INTO `prereq` VALUES (1, 1);
INSERT INTO `prereq` VALUES (2, 2);
INSERT INTO `prereq` VALUES (3, 6);
INSERT INTO `prereq` VALUES (4, 5);
INSERT INTO `prereq` VALUES (5, 3);
INSERT INTO `prereq` VALUES (6, 7);
INSERT INTO `prereq` VALUES (7, 8);
INSERT INTO `prereq` VALUES (8, 4);
INSERT INTO `prereq` VALUES (9, 1);
INSERT INTO `prereq` VALUES (10, 2);
INSERT INTO `prereq` VALUES (11, 6);
INSERT INTO `prereq` VALUES (12, 5);
INSERT INTO `prereq` VALUES (13, 3);
INSERT INTO `prereq` VALUES (14, 7);
INSERT INTO `prereq` VALUES (15, 8);
INSERT INTO `prereq` VALUES (16, 4);
-- FIM SEED DE PREREQ


