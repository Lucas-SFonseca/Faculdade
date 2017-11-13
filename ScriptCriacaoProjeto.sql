CREATE DATABASE Projeto;
GO

USE Projeto;
GO

CREATE SCHEMA Faculdade;
GO

CREATE TABLE Faculdade.Aluno (
	Id_Aluno INT IDENTITY, 
	ra INT NOT NULL,				   
	nome VARCHAR(120),
	email VARCHAR(80),
	celular CHAR(11),
	sigla_curso CHAR(2),
	
	CONSTRAINT pkAluno PRIMARY KEY (Id_Aluno),
	CONSTRAINT uqRaAluno UNIQUE (ra),
);

CREATE TABLE Faculdade.Disciplina (
	Id_Disciplina INT IDENTITY,		
	nome VARCHAR(240) NOT NULL,				
	carga_horaria TINYINT,
	teoria DECIMAL(3),
	pratica DECIMAL (3),
	ementa TEXT,
	competencias TEXT,
	habilidades TEXT,
	conteudo TEXT,
	bibliografia_basica TEXT,
	bibliografia_complementar TEXT,

	CONSTRAINT pkDisciplina PRIMARY KEY (Id_Disciplina),
	CONSTRAINT uqNomeDisciplina UNIQUE (nome),
);

CREATE TABLE Faculdade.Professor (
	Id_Professor INT IDENTITY,  
	ra INT NOT NULL,					
	apelido VARCHAR(30) NOT NULL,		
	nome VARCHAR(120),
	email VARCHAR(80),
	celular CHAR(11),

	CONSTRAINT pkProfessor PRIMARY KEY (Id_Professor),
	CONSTRAINT uqRaProfessor UNIQUE (ra),
	CONSTRAINT uqApelido UNIQUE (apelido),
);

CREATE TABLE Faculdade.Turma (
	Id_Turma INT IDENTITY,
	Id_Disciplina INT NOT NULL, 	
	Id_Ofertada INT NOT NULL,
	Id CHAR(1) NOT NULL,
	turno VARCHAR(15),
	ra_professor INT NOT NULL,

	CONSTRAINT PkTurma PRIMARY KEY (Id_Turma),
	CONSTRAINT uQIdTurma UNIQUE (Id),
);


CREATE TABLE Faculdade.Matricula (
	Id_Matricula INT IDENTITY, 
	Id_Aluno INT NOT NULL,				
	Id_Disciplina INT NOT NULL,			
	Id_Ofertada INT NOT NULL,				
	Id_Turma INT NOT NULL,			
		
	CONSTRAINT pkMatricula PRIMARY KEY (Id_Matricula),
);

CREATE TABLE Faculdade.Curso (
	Id_Curso INT,
	Sigla VARCHAR(5) NOT NULL,
	Nome VARCHAR(50) NOT NULL,

	CONSTRAINT pkCurso PRIMARY KEY (Id_Curso),
	CONSTRAINT uqCursoSigla UNIQUE (Sigla),
	CONSTRAINT uqCursoNome UNIQUE (Nome)
);

CREATE TABLE Faculdade.GradeCurricular (
	Id_Grade INT,
	Id_Curso INT,
	Ano SMALLINT NOT NULL,
	Semestre CHAR(1) NOT NULL, 

	CONSTRAINT pkGrade PRIMARY KEY (Id_Grade),
	CONSTRAINT uqGradeAno UNIQUE (Ano),
	CONSTRAINT uqGradeSem UNIQUE (Semestre)
);

CREATE TABLE Faculdade.Periodo(
	Id_Periodo INT, 			
	Id_Curso INT NOT NULL,
	Id_Grade INT NOT NULL,
	Numero TINYINT,
	CONSTRAINT pkPeriodo PRIMARY KEY (Id_Periodo),
	CONSTRAINT uqPeriodoNumero UNIQUE (Numero),
);

CREATE TABLE Faculdade.DisciplinaOfertada(
	Id_Ofertada INT, 			
	Id_disciplina INT NOT NULL,
	Ano SMALLINT NOT NULL,
	semestre CHAR(1) NOT NULL,

	CONSTRAINT pkDiscipliinaOfertada PRIMARY KEY (Id_Ofertada),
	CONSTRAINT uqDisciplinaOfAno UNIQUE (Ano),
	CONSTRAINT uqDisciplinaOfSem UNIQUE (semestre),
);

CREATE TABLE Faculdade.CursoTurma(
	Id_CursoTurma INT, 			
	Id_Curso INT NOT NULL,
	Id_Disciplina INT NOT NULL,
	Id_Ofertada INT NOT NULL, 
	Id_Turma INT NOT NULL,

	CONSTRAINT pkCursoTurma PRIMARY KEY (Id_CursoTurma),
);

CREATE TABLE Faculdade.Questao(
	Id_Questao INT IDENTITY,
	Id_Turma INT NOT NULL,
	Id_Ofertada INT NOT NULL,
	Id_Disciplina INT NOT NULL,
	numero INT NOT NULL,
	data_limite_entrega DATE,
	descricao TEXT,
	data DATE,

	CONSTRAINT pkQuestao PRIMARY KEY(Id_Questao),
	CONSTRAINT uqNumero UNIQUE (numero),

);

CREATE TABLE  Faculdade.ArquivoQuestao(
	Id_ArquivoQuestao INT IDENTITY,
	Id_Questao INT NOT NULL,
	Id_Turma INT NOT NULL,
	Id_Ofertada INT NOT NULL,
	Id_Disciplina INT NOT NULL,
	arquivo VARCHAR(500) NOT NULL,

	CONSTRAINT pkArquivoquestao PRIMARY KEY(Id_ArquivoQuestao),
	CONSTRAINT uqArquivoQuest UNIQUE(arquivo),
);

CREATE TABLE Faculdade.ArquivoResposta(
	Id_ArquivoResposta INT IDENTITY,
	Id_Questao INT NOT NULL,
	Id_Aluno INT NOT NULL,
	Id_Turma INT NOT NULL,
	Id_Ofertada INT NOT NULL,
	Id_Disciplina INT NOT NULL,
	arquivo VARCHAR(500) NOT NULL,

	CONSTRAINT PkArquivoResposta PRIMARY KEY(Id_ArquivoResposta),
	CONSTRAINT uqArquivoResp UNIQUE(arquivo)
);

CREATE TABLE Faculdade.Resposta (
	Id_Resposta INT IDENTITY,
	Id_Disciplina INT NOT NULL,
	Id_Ofertada INT NOT NULL,
	Id_Turma INT NOT NULL,
	Id_Questao INT NOT NULL,
	ra_aluno INT NOT NULL,
	data_avaliacao DATE,
	nota DECIMAL(4,2),
	avaliacao TEXT,
	descricao TEXT,
	data_de_envio DATE,

	CONSTRAINT pkResposta PRIMARY KEY(Id_Resposta),
	CONSTRAINT uqRaAlunoResp UNIQUE (ra_aluno)
);

CREATE TABLE Faculdade.PeriodoDisciplina(
	Id_PeriodoDisciplina INT IDENTITY,
	Id_Disciplina INT NOT NULL,
	Id_Periodo INT NOT NULL,
	Id_Grade INT NOT NULL,
	Id_Curso INT NOT NULL,

	CONSTRAINT pkPeriodoDisciplina PRIMARY KEY(Id_PeriodoDisciplina),
);

