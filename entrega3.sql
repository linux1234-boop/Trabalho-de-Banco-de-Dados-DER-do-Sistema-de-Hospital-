CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS internacao, localizacao, item_receita, receita, medicamento, fornecedor, exame, consulta, prontuario, paciente, plantao, administrativo, enfermeiro, medico, funcionario, departamento;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE departamento (
    id_depto INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    telefone VARCHAR(15),
    CONSTRAINT pk_departamento PRIMARY KEY (id_depto)
);


CREATE TABLE funcionario (
    cpf_func VARCHAR(11),
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE NOT NULL,
    telefone VARCHAR(15),
    salario DECIMAL(10, 2) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    id_depto_FK INT NOT NULL,
    CONSTRAINT pk_funcionario PRIMARY KEY (cpf_func),
    CONSTRAINT fk_func_departamento FOREIGN KEY (id_depto_FK) REFERENCES departamento (id_depto) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_salario CHECK (salario >= 0)
);

-- Tabela: medico
CREATE TABLE medico (
    cpf_func_FK VARCHAR(11),
    crm VARCHAR(20) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    CONSTRAINT pk_medico PRIMARY KEY (cpf_func_FK),
    CONSTRAINT fk_medico_funcionario FOREIGN KEY (cpf_func_FK) REFERENCES funcionario (cpf_func) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_crm UNIQUE (crm)
);


CREATE TABLE enfermeiro (
    cpf_func_FK VARCHAR(11),
    coren VARCHAR(20) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    nivel_formacao VARCHAR(50) NOT NULL,
    CONSTRAINT pk_enfermeiro PRIMARY KEY (cpf_func_FK),
    CONSTRAINT fk_enfermeiro_funcionario FOREIGN KEY (cpf_func_FK) REFERENCES funcionario (cpf_func) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_coren UNIQUE (coren)
);


CREATE TABLE administrativo (
    cpf_func_FK VARCHAR(11),
    setor VARCHAR(50) NOT NULL,
    nivel_acesso VARCHAR(20) NOT NULL,
    ramal VARCHAR(10),
    CONSTRAINT pk_administrativo PRIMARY KEY (cpf_func_FK),
    CONSTRAINT fk_admin_funcionario FOREIGN KEY (cpf_func_FK) REFERENCES funcionario (cpf_func) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE plantao (
    id_plantao INT AUTO_INCREMENT,
    data DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    cpf_func_FK VARCHAR(11) NOT NULL,
    CONSTRAINT pk_plantao PRIMARY KEY (id_plantao),
    CONSTRAINT fk_plantao_funcionario FOREIGN KEY (cpf_func_FK) REFERENCES funcionario (cpf_func) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE paciente (
    id_paciente INT AUTO_INCREMENT,
    cpf_paciente VARCHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE NOT NULL,
    telefone VARCHAR(15),
    tipo_sanguineo VARCHAR(3) NOT NULL,
    CONSTRAINT pk_paciente PRIMARY KEY (id_paciente),
    CONSTRAINT uq_cpf_paciente UNIQUE (cpf_paciente)
);

CREATE TABLE prontuario (
    id_prontuario INT AUTO_INCREMENT,
    data_abertura DATE NOT NULL,
    alergias TEXT,
    observacoes TEXT,
    id_paciente_FK INT NOT NULL,
    CONSTRAINT pk_prontuario PRIMARY KEY (id_prontuario),
    CONSTRAINT fk_prontuario_paciente FOREIGN KEY (id_paciente_FK) REFERENCES paciente (id_paciente) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_prontuario_paciente UNIQUE (id_paciente_FK)
);


CREATE TABLE consulta (
    id_consulta INT AUTO_INCREMENT,
    hora TIME NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    status VARCHAR(30) NOT NULL,
    cpf_medico_FK VARCHAR(11) NOT NULL,
    id_paciente_FK INT NOT NULL,
    CONSTRAINT pk_consulta PRIMARY KEY (id_consulta),
    CONSTRAINT fk_consulta_medico FOREIGN KEY (cpf_medico_FK) REFERENCES medico (cpf_func_FK) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_consulta_paciente FOREIGN KEY (id_paciente_FK) REFERENCES paciente (id_paciente) ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE exame (
    id_exame INT AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL,
    data_realizacao DATE NOT NULL,
    resultado TEXT,
    id_prontuario_FK INT NOT NULL,
    cpf_medico_FK VARCHAR(11) NOT NULL,
    CONSTRAINT pk_exame PRIMARY KEY (id_exame),
    CONSTRAINT fk_exame_prontuario FOREIGN KEY (id_prontuario_FK) REFERENCES prontuario (id_prontuario) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_exame_medico FOREIGN KEY (cpf_medico_FK) REFERENCES medico (cpf_func_FK) ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE fornecedor (
    id_fornecedor INT AUTO_INCREMENT,
    cnpj VARCHAR(14) NOT NULL,
    nome_empresa VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    CONSTRAINT pk_fornecedor PRIMARY KEY (id_fornecedor),
    CONSTRAINT uq_cnpj_fornecedor UNIQUE (cnpj)
);


CREATE TABLE medicamento (
    id_medicamento INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    principio_ativo VARCHAR(100) NOT NULL,
    estoque_atual INT NOT NULL,
    estoque_minimo INT NOT NULL,
    id_fornecedor_FK INT NOT NULL,
    CONSTRAINT pk_medicamento PRIMARY KEY (id_medicamento),
    CONSTRAINT fk_medicamento_fornecedor FOREIGN KEY (id_fornecedor_FK) REFERENCES fornecedor (id_fornecedor) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_med_principio UNIQUE (nome, principio_ativo),
    CONSTRAINT chk_estoque_atual CHECK (estoque_atual >= 0),
    CONSTRAINT chk_estoque_minimo CHECK (estoque_minimo >= 0)
);


CREATE TABLE receita (
    id_receita INT AUTO_INCREMENT,
    data DATE NOT NULL,
    validade DATE NOT NULL,
    quantidade_de_uso VARCHAR(50) NOT NULL,
    id_consulta_FK INT NOT NULL,
    CONSTRAINT pk_receita PRIMARY KEY (id_receita),
    CONSTRAINT fk_receita_consulta FOREIGN KEY (id_consulta_FK) REFERENCES consulta (id_consulta) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE item_receita (
    id_receita_FK INT,
    id_medicamento_FK INT,
    posologia TEXT NOT NULL,
    CONSTRAINT pk_item_receita PRIMARY KEY (id_receita_FK, id_medicamento_FK),
    CONSTRAINT fk_item_receita FOREIGN KEY (id_receita_FK) REFERENCES receita (id_receita) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_item_medicamento FOREIGN KEY (id_medicamento_FK) REFERENCES medicamento (id_medicamento) ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE localizacao (
    id_local INT AUTO_INCREMENT,
    ala VARCHAR(50) NOT NULL,
    quarto VARCHAR(10) NOT NULL,
    leito VARCHAR(30) NOT NULL,
    andar INT NOT NULL,
    bloco VARCHAR(10) NOT NULL,
    CONSTRAINT pk_localizacao PRIMARY KEY (id_local),
    CONSTRAINT uq_localizacao_fisica UNIQUE (ala, quarto, leito, andar, bloco)
);


CREATE TABLE internacao (
    id_internacao INT AUTO_INCREMENT,
    data_entrada DATE NOT NULL,
    data_saida DATE,
    motivo VARCHAR(255) NOT NULL,
    id_paciente_FK INT NOT NULL,
    id_local_FK INT NOT NULL,
    cpf_enfermeiro_FK VARCHAR(11) NOT NULL,
    CONSTRAINT pk_internacao PRIMARY KEY (id_internacao),
    CONSTRAINT fk_internacao_paciente FOREIGN KEY (id_paciente_FK) REFERENCES paciente (id_paciente) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_internacao_localizacao FOREIGN KEY (id_local_FK) REFERENCES localizacao (id_local) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_internacao_enfermeiro FOREIGN KEY (cpf_enfermeiro_FK) REFERENCES enfermeiro (cpf_func_FK) ON DELETE RESTRICT ON UPDATE CASCADE
);
