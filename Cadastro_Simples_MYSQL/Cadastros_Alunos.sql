/* Criando Tabela Aluno
 - Identificador de aluno (chave primária - tipo número)
	--> Nome (tipo texto)
    --> Data de nascimento (tipo data)
    --> Endereço (tipo texto)
    --> CPF (tipo texto)
*/
ALTER TABLE alunos 
ADD COLUMN `nome` VARCHAR(100) NOT NULL AFTER `id_aluno`,
ADD COLUMN `data_nascimento` DATE NOT NULL AFTER `nome`,
ADD COLUMN `endereco` VARCHAR(255) NOT NULL AFTER `data_nascimento`,
ADD COLUMN `cidade` VARCHAR(100) NOT NULL AFTER `endereco`,
ADD COLUMN `estado` VARCHAR(2) NOT NULL AFTER `cidade`,
ADD COLUMN `cpf` VARCHAR(11) NOT NULL AFTER `estado`;


/* Criando Tabela Cursos
 - Identificador de cursos (chave primária - tipo número)
	--> Nome (tipo texto)
*/
ALTER TABLE cursos 
ADD COLUMN `nome` VARCHAR(100) NOT NULL AFTER `id_curso`;




/* Criando Tabela Notas
 - Identificador de notas (chave primária - tipo número)
	--> Descrição da atividade (tipo texto)
    --> Valor Nota (tipo número)
*/
ALTER TABLE notas 
ADD COLUMN `descricao_atividade` VARCHAR(100) NOT NULL AFTER `id_nota`,
ADD COLUMN `vlr_nota` DECIMAL(5,2) NOT NULL AFTER `descricao_atividade`;