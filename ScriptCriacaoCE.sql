ALTER TABLE Faculdade.Turma ADD CONSTRAINT fkDisciplina FOREIGN KEY (Id_Disciplina)
REFERENCES Faculdade.Disciplina (Id_Disciplina)

ALTER TABLE Faculdade.Turma ADD CONSTRAINT fkIdDisciOf FOREIGN KEY (Id_Ofertada)
REFERENCES Faculdade.DisciplinaOfertada (Id_Ofertada)

ALTER TABLE Faculdade.Turma ADD CONSTRAINT fkProfessor FOREIGN KEY (ra_professor)
REFERENCES Faculdade.Professor (ra)

ALTER TABLE Faculdade.Matricula ADD	CONSTRAINT fkMatriculaAluno FOREIGN KEY (Id_Aluno) 
REFERENCES Faculdade.Aluno (Id_Aluno)

ALTER TABLE Faculdade.Matricula ADD	CONSTRAINT fkMatriculaDisciplina FOREIGN KEY (Id_Disciplina) 
REFERENCES Faculdade.Disciplina (Id_Disciplina)

ALTER TABLE Faculdade.Matricula ADD	CONSTRAINT fkMatriculaDisciOf FOREIGN KEY (Id_Ofertada) 
REFERENCES Faculdade.DisciplinaOfertada (Id_Ofertada)

ALTER TABLE Faculdade.Matricula ADD	CONSTRAINT fkMatriculaTurma FOREIGN KEY (Id_Turma) 
REFERENCES Faculdade.Turma (Id_Turma)

ALTER TABLE Faculdade.GradeCurricular ADD CONSTRAINT fkGradeCurso FOREIGN KEY (Id_Curso)
REFERENCES Faculdade.Curso (Id_Curso)

ALTER TABLE Faculdade.Periodo ADD CONSTRAINT fkPeriodoCurso FOREIGN KEY (Id_Curso)
REFERENCES Faculdade.Curso (Id_Curso)

ALTER TABLE Faculdade.Periodo ADD CONSTRAINT fkPeriodoGrade FOREIGN KEY (Id_Grade)
REFERENCES Faculdade.GradeCurricular (Id_Grade)

ALTER TABLE Faculdade.DisciplinaOfertada ADD CONSTRAINT fkDisciplinaOfDisc FOREIGN KEY (Id_Disciplina)
REFERENCES Faculdade.Disciplina (Id_Disciplina)

ALTER TABLE Faculdade.CursoTurma ADD CONSTRAINT fkCursoTurmaCurso FOREIGN KEY (Id_Curso)
REFERENCES Faculdade.Curso (Id_Curso)

ALTER TABLE Faculdade.CursoTurma ADD CONSTRAINT fkCursoTurmaDisc FOREIGN KEY (Id_Disciplina)
REFERENCES Faculdade.Disciplina (Id_Disciplina)

ALTER TABLE Faculdade.CursoTurma ADD CONSTRAINT fkCursoTurmaOfert FOREIGN KEY (Id_Ofertada)
REFERENCES Faculdade.DisciplinaOfertada (Id_Ofertada)

ALTER TABLE Faculdade.CursoTurma ADD CONSTRAINT fkCursoTurma_Turma FOREIGN KEY (Id_Turma)
REFERENCES Faculdade.Turma (Id_Turma)

ALTER TABLE Faculdade.Questao ADD CONSTRAINT fkIdTurma FOREIGN KEY (Id_Turma) 
REFERENCES Faculdade.Turma (Id_Turma)

ALTER TABLE Faculdade.Questao ADD CONSTRAINT fkOfertada FOREIGN KEY (Id_Ofertada) 
REFERENCES Faculdade.DisciplinaOfertada (Id_Ofertada) 

ALTER TABLE Faculdade.Questao ADD CONSTRAINT fkDisciplinaQuestao FOREIGN KEY (Id_Disciplina) 
REFERENCES Faculdade.Disciplina (Id_Disciplina) 

ALTER TABLE Faculdade.ArquivoQuestao ADD CONSTRAINT fkArqQuestao FOREIGN KEY(Id_Questao)
REFERENCES Faculdade.Questao(Id_Questao) 
	
ALTER TABLE Faculdade.ArquivoQuestao ADD CONSTRAINT fkArqTurma FOREIGN KEY(Id_Turma)
REFERENCES Faculdade.Turma(Id_Turma) 

ALTER TABLE Faculdade.ArquivoQuestao ADD CONSTRAINT fkArqOfertada FOREIGN KEY(Id_Ofertada)
REFERENCES Faculdade.DisciplinaOfertada(Id_Ofertada) 

ALTER TABLE Faculdade.ArquivoQuestao ADD CONSTRAINT fkArqDisciplina FOREIGN KEY(Id_Disciplina)
REFERENCES Faculdade.Disciplina(Id_Disciplina) 

ALTER TABLE Faculdade.ArquivoResposta ADD CONSTRAINT fkRespQuestao FOREIGN KEY(Id_Questao)
REFERENCES Faculdade.Questao(Id_Questao)

ALTER TABLE Faculdade.ArquivoResposta ADD CONSTRAINT fkRespAluno FOREIGN KEY(Id_Aluno)
REFERENCES Faculdade.Aluno(Id_Aluno)

ALTER TABLE Faculdade.ArquivoResposta ADD CONSTRAINT fkRespTurma FOREIGN KEY(Id_Turma)
REFERENCES Faculdade.Turma(Id_Turma)

ALTER TABLE Faculdade.ArquivoResposta ADD CONSTRAINT fkRespOfertada FOREIGN KEY(Id_Ofertada)
REFERENCES Faculdade.DisciplinaOfertada(Id_Ofertada)

ALTER TABLE Faculdade.ArquivoResposta ADD CONSTRAINT fkRespDisciplina FOREIGN KEY(Id_Disciplina)
REFERENCES Faculdade.Disciplina(Id_Disciplina)

ALTER TABLE Faculdade.Resposta ADD CONSTRAINT fkRespostaDisciplina FOREIGN KEY(Id_Disciplina)
REFERENCES Faculdade.Disciplina(Id_Disciplina)

ALTER TABLE Faculdade.Resposta ADD CONSTRAINT fkRespostaOfertada FOREIGN KEY(Id_Ofertada)
REFERENCES Faculdade.DisciplinaOfertada(Id_Ofertada)

ALTER TABLE Faculdade.Resposta ADD CONSTRAINT fkRespostaTurma FOREIGN KEY(Id_Turma)
REFERENCES Faculdade.Turma(Id_Turma)

ALTER TABLE Faculdade.Resposta ADD CONSTRAINT fkRespostaQuestao FOREIGN KEY (Id_Questao)
REFERENCES Faculdade.Questao(Id_Questao)

ALTER TABLE Faculdade.PeriodoDisciplina ADD CONSTRAINT fkPerDisciplina FOREIGN KEY (Id_Disciplina) 
REFERENCES Faculdade.Disciplina (Id_Disciplina)

ALTER TABLE Faculdade.PeriodoDisciplina ADD CONSTRAINT fkPerPeriodo FOREIGN KEY (Id_Periodo)
REFERENCES Faculdade.Periodo (Id_Periodo)

ALTER TABLE Faculdade.PeriodoDisciplina ADD CONSTRAINT fkPerGrade FOREIGN KEY (Id_Grade) 
REFERENCES Faculdade.GradeCurricular (Id_Grade)

ALTER TABLE Faculdade.PeriodoDisciplina ADD CONSTRAINT fkPerCurso FOREIGN KEY (Id_Curso)
REFERENCES Faculdade.Curso (Id_Curso)	

