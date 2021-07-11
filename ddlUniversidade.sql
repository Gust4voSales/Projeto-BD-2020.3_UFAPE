DROP DATABASE IF EXISTS `sql_universidade`;
CREATE DATABASE `sql_universidade`; 
USE `sql_universidade`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;


CREATE TABLE `sala` (
  `numero_sala` int NOT NULL,
  `predio` int NOT NULL,
  `capacidade` int NOT NULL,
  PRIMARY KEY (`numero_sala`, `predio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `departamento` (
  `nome_dept` varchar(20) NOT NULL,
  `predio` int NOT NULL,
  `orcamento` double, 
  PRIMARY KEY (`nome_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `curso` (
  `id_curso` int NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `nome_dept` varchar(20) NOT NULL, -- FK departamento
  `creditos` double, 
  PRIMARY KEY (`id_curso`),
  FOREIGN KEY (`nome_dept`) REFERENCES `departamento` (`nome_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `instrutor` (
  `id` int NOT NULL,
  `nome` varchar(15) NOT NULL,
  `nome_dept` varchar(20) NOT NULL, -- FK departamento
  `salario` double, 
  PRIMARY KEY (`id`),
  FOREIGN KEY (`nome_dept`) REFERENCES `departamento` (`nome_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `periodo` (
  `id_periodo` int NOT NULL,
  `dia` date NOT NULL, 
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL, 
  PRIMARY KEY (`id_periodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `secao` (
  `id_sec` int NOT NULL, -- chave1 da chave composta
  `id_curso` int NOT NULL, -- chave2 da chave composta que é tbm FK de curso
  `semestre` varchar(15) NOT NULL, -- chave3 da chave composta
  `predio` int NOT NULL,
  `numero_sala` int NOT NULL, -- FK de sala
  `id_periodo` int NOT NULL,
  PRIMARY KEY (`id_sec`, `id_curso`, `semestre`),
  FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
  FOREIGN KEY (`numero_sala`) REFERENCES `sala` (`numero_sala`),
  FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ministra` (
  `id` int NOT NULL, -- chave1 da chave composta que é tbm FK de instrutor
  `id_curso` int NOT NULL, -- chave2 da chave composta que é tbm FK de secao
  `id_sec` int NOT NULL, -- chave3 da chave composta que é tbm FK de secao
  `semestre` varchar(15) NOT NULL, -- chave4 da chave composta que é tbm FK de secao
  `ano` year NOT NULL, 
  PRIMARY KEY (`id`, `id_curso`, `id_sec`, `semestre`, `ano`),
  FOREIGN KEY (`id`) REFERENCES `instrutor` (`id`),
  FOREIGN KEY (`id_sec`, `id_curso`, `semestre`) REFERENCES `secao` (`id_sec`, `id_curso`, `semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aluno` (
  `id` int NOT NULL, 
  `nome` varchar(15) NOT NULL,
  `nome_dept` varchar(20), -- FK departamento
  `tot_cred` double, 
  PRIMARY KEY(`id`),
  FOREIGN KEY (`nome_dept`) REFERENCES `departamento` (`nome_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `realiza` (
  `id` int NOT NULL,
  `id_curso` int NOT NULL, 
  `id_sec` int NOT NULL, 
  `semestre` varchar(15) NOT NULL, 
  `ano` year NOT NULL, 
  `nota` double, 
  PRIMARY KEY (`id`, `id_curso`, `id_sec`, `semestre`, `ano`), -- Chave primaria composta é a FK de aluno(ID) e secao (id_curso, id_sec, semestre)
  FOREIGN KEY (`id`) REFERENCES `aluno` (`id`),
  CONSTRAINT FOREIGN KEY (`id_sec`, `id_curso`, `semestre`) REFERENCES `secao` (`id_sec`, `id_curso`, `semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `mentor` (
  `id_est` int NOT NULL,
  `id_inst` int,
  PRIMARY KEY(`id_est`),
  FOREIGN KEY (`id_est`) REFERENCES `aluno` (`id`),
  FOREIGN KEY (`id_inst`) REFERENCES `instrutor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `prereq` (
  `id_prereq` int NOT NULL,
  `id_curso` int NOT NULL,
  PRIMARY KEY(`id_prereq`, `id_curso`),
  FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



