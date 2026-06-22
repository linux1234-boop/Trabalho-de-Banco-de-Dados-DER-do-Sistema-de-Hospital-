INSERT INTO departamento (nome, descricao, telefone) VALUES 
('Cardiologia', 'Atendimento de alta complexidade cardiovascular', '4435111001'),
('Pediatria', 'Pronto atendimento infantil e consultas agendadas', '4435111002'),
('Urgência e Emergência', 'Plantão 24 horas para traumas e emergências graves', '4435111003'),
('Neurologia', 'Acompanhamento clínico e cirúrgico do sistema nervoso', '4435111004'),
('Ortopedia', 'Tratamentos de fraturas, lesões ósseas e musculares', '4435111005'),
('Ginecologia', 'Saúde integrada da mulher e obstetrícia de risco', '4435111006'),
('Oncologia', 'Tratamentos quimioterápicos e acompanhamento oncológico', '4435111007'),
('UTI Geral', 'Unidade de terapia intensiva adulta polivalente', '4435111008'),
('Farmácia Hospitalar', 'Dispensação interna de insumos e medicamentos', '4435111009'),
('Administrativo Central', 'Setores de faturamento, RH e diretoria hospitalar', '4435111010');

INSERT INTO funcionario (cpf_func, nome, data_nasc, telefone, salario, cargo, id_depto_FK) VALUES
('10100000001', 'Dr. Carlos Henrique Candido', '1980-05-12', '44988881111', 15000.00, 'Médico', 1),
('10100000002', 'Dra. Mariana Souza', '1985-08-20', '44988882222', 14500.00, 'Médico', 2),
('10100000003', 'Dr. Roberto Jefferson', '1978-10-30', '44988883333', 16000.00, 'Médico', 4),
('10100000004', 'Dr. Marcos Castro', '1982-03-14', '44988884444', 14000.00, 'Médico', 5),
('10100000005', 'Enf. Ana Paula Medeiros', '1990-03-15', '44955551111', 6500.00, 'Enfermeiro', 3),
('10100000006', 'Enf. Lucas Alencar', '1993-07-22', '44955552222', 5800.00, 'Enfermeiro', 8),
('10100000007', 'Enf. Juliana Ramos', '1989-11-05', '44955553333', 6200.00, 'Enfermeiro', 3),
('10100000008', 'Ricardo Augusto Silva', '1988-11-02', '44922221111', 4200.00, 'Administrativo', 10),
('10100000009', 'Fernanda Costa Lima', '1995-01-25', '44922222222', 3800.00, 'Administrativo', 10),
('10100000010', 'Beatriz Antunes', '1991-09-18', '44922223333', 4500.00, 'Administrativo', 10);


INSERT INTO funcionario (cpf_func, nome, data_nasc, telefone, salario, cargo, id_depto_FK) VALUES
('10100000011', 'Dr. André Pereira', '1975-04-12', '44988885555', 15500.00, 'Médico', 6),
('10100000012', 'Dra. Sandra Ribeiro', '1981-06-21', '44988886666', 14800.00, 'Médico', 7),
('10100000013', 'Dr. Fabio Henrique', '1984-02-28', '44988887777', 14200.00, 'Médico', 1),
('10100000014', 'Dra. Camila Nunes', '1987-12-05', '44988888888', 15100.00, 'Médico', 2),
('10100000015', 'Dr. Thiago Santos', '1979-09-14', '44988889999', 16500.00, 'Médico', 4),
('10100000016', 'Dra. Patricia Lima', '1983-11-23', '44988880000', 14900.00, 'Médico', 5),
('10100000017', 'Enf. Bruno Alves', '1992-05-14', '44955554444', 5500.00, 'Enfermeiro', 3),
('10100000018', 'Enf. Carla Dias', '1988-08-19', '44955555555', 6100.00, 'Enfermeiro', 8),
('10100000019', 'Enf. Diego Mota', '1994-01-11', '44955556666', 5400.00, 'Enfermeiro', 3),
('10100000020', 'Enf. Elaine Rocha', '1991-03-24', '44955557777', 5900.00, 'Enfermeiro', 8),
('10100000021', 'Enf. Felipe Cruz', '1987-10-02', '44955558888', 6300.00, 'Enfermeiro', 3),
('10100000022', 'Enf. Gisele Pires', '1995-12-30', '44955559999', 5600.00, 'Enfermeiro', 8),
('10100000023', 'Enf. Helio Silva', '1986-06-15', '44955550000', 6400.00, 'Enfermeiro', 3),
('10100000024', 'Igor Guimarães', '1990-04-03', '44922224444', 4100.00, 'Administrativo', 10),
('10100000025', 'Jessica Mueller', '1993-02-27', '44922225555', 4300.00, 'Administrativo', 10),
('10100000026', 'Kleber Machado', '1985-07-14', '44922226666', 4900.00, 'Administrativo', 10),
('10100000027', 'Larissa Manoela', '1996-10-09', '44922227777', 3700.00, 'Administrativo', 10),
('10100000028', 'Mauricio Mattar', '1982-12-25', '44922228888', 5200.00, 'Administrativo', 10),
('10100000029', 'Naiara Azevedo', '1989-05-19', '44922229999', 4000.00, 'Administrativo', 10),
('10100000030', 'Oswaldo Montenegro', '1977-08-31', '44922220000', 5500.00, 'Administrativo', 10);


INSERT INTO medico (cpf_func_FK, crm, especialidade, turno) VALUES
('10100000001', 'CRM/PR12345', 'Cardiologia', 'Matutino'),
('10100000002', 'CRM/PR67890', 'Pediatria', 'Vespertino'),
('10100000003', 'CRM/PR11223', 'Neurologia', 'Noturno'),
('10100000004', 'CRM/PR44556', 'Ortopedia', 'Matutino'),
('10100000011', 'CRM/PR55667', 'Ginecologia', 'Vespertino'),
('10100000012', 'CRM/PR77889', 'Oncologia', 'Matutino'),
('10100000013', 'CRM/PR99001', 'Cardiologia', 'Noturno'),
('10100000014', 'CRM/PR22334', 'Pediatria', 'Matutino'),
('10100000015', 'CRM/PR44557', 'Neurologia', 'Vespertino'),
('10100000016', 'CRM/PR66778', 'Ortopedia', 'Noturno');


INSERT INTO enfermeiro (cpf_func_FK, coren, turno, nivel_formacao) VALUES
('10100000005', 'COREN/PR111', 'Integral', 'Pós-Graduação'),
('10100000006', 'COREN/PR222', 'Noturno', 'Graduação'),
('10100000007', 'COREN/PR333', 'Matutino', 'Técnico'),
('10100000017', 'COREN/PR444', 'Vespertino', 'Graduação'),
('10100000018', 'COREN/PR555', 'Noturno', 'Pós-Graduação'),
('10100000019', 'COREN/PR666', 'Matutino', 'Técnico'),
('10100000020', 'COREN/PR777', 'Vespertino', 'Graduação'),
('10100000021', 'COREN/PR888', 'Noturno', 'Mestrado'),
('10100000022', 'COREN/PR999', 'Matutino', 'Graduação'),
('10100000023', 'COREN/PR000', 'Vespertino', 'Pós-Graduação');


INSERT INTO administrativo (cpf_func_FK, setor, nivel_acesso, ramal) VALUES
('10100000008', 'Recepção Central', 'Médio', '4001'),
('10100000009', 'Recursos Humanos', 'Médio', '4002'),
('10100000010', 'Faturamento', 'Alto', '4003'),
('10100000024', 'TI Suporte', 'Alto', '5001'),
('10100000025', 'Compras', 'Médio', '4004'),
('10100000026', 'Almoxarifado', 'Baixo', '4005'),
('10100000027', 'Recepção UTI', 'Baixo', '4006'),
('10100000028', 'Diretoria Executiva', 'Total', '1001'),
('10100000029', 'Auditoria Interna', 'Alto', '1002'),
('10100000030', 'Jurídico', 'Alto', '1003');


INSERT INTO plantao (data, hora_inicio, hora_fim, cpf_func_FK) VALUES
('2026-06-20', '07:00:00', '19:00:00', '10100000005'),
('2026-06-20', '19:00:00', '07:00:00', '10100000006'),
('2026-06-21', '07:00:00', '19:00:00', '10100000017'),
('2026-06-21', '19:00:00', '07:00:00', '10100000018'),
('2026-06-22', '07:00:00', '13:00:00', '10100000007'),
('2026-06-22', '13:00:00', '19:00:00', '10100000019'),
('2026-06-23', '07:00:00', '19:00:00', '10100000020'),
('2026-06-23', '19:00:00', '07:00:00', '10100000021'),
('2026-06-24', '07:00:00', '19:00:00', '10100000022'),
('2026-06-24', '19:00:00', '07:00:00', '10100000023');


INSERT INTO paciente (cpf_paciente, nome, data_nasc, telefone, tipo_sanguineo) VALUES
('20200000001', 'José da Silva', '1975-01-10', '44999991111', 'O+'),
('20200000002', 'Maria Oliveira', '1982-04-22', '44999992222', 'A-'),
('20200000003', 'Antonio Santos', '1960-09-15', '44999993333', 'B+'),
('20200000004', 'Francisca Souza', '1995-12-05', '44999994444', 'AB+'),
('20200000005', 'João Pereira', '1953-03-18', '44999995555', 'O-'),
('20200000006', 'Manoel Alves', '2015-07-14', '44999996666', 'A+'),
('20200000007', 'Sebastiana Lima', '1948-11-23', '44999997777', 'B-'),
('20200000008', 'Paulo Rodrigues', '1988-02-27', '44999998888', 'O+'),
('20200000009', 'Carlos Eduardo', '2001-06-09', '44999999999', 'A+'),
('20200000010', 'Ana Julia Costa', '1992-10-12', '44999990000', 'AB-');


INSERT INTO prontuario (data_abertura, alergias, observacoes, id_paciente_FK) VALUES
('2015-05-10', 'Nenhuma identificada', 'Paciente hipertenso crônico.', 1),
('2018-02-14', 'Penicilina', 'Histórico familiar de diabetes tipo 2.', 2),
('2010-09-20', 'Nenhuma identificada', 'Acompanhamento neurológico regular.', 3),
('2020-11-05', 'Corantes alimentícios', 'Paciente relata dores recorrentes nas articulações.', 4),
('2012-04-18', 'AAS / Aspirina', 'Idoso com recomendação de monitoramento geriátrico.', 5),
('2022-07-14', 'Nenhuma identificada', 'Prontuário pediátrico padrão.', 6),
('2008-01-23', 'Ibuprofeno', 'Paciente oncológica em remissão estável.', 7),
('2019-06-12', 'Nenhuma identificada', 'Prontuário clínico ativo para rotinas.', 8),
('2021-03-30', 'Poeira e ácaros', 'Histórico de asma na infância.', 9),
('2017-10-12', 'Sulfa', 'Crises esporádicas de enxaqueca refratária.', 10);


INSERT INTO consulta (hora, tipo, status, cpf_medico_FK, id_paciente_FK) VALUES
('09:00:00', 'Primeira Consulta', 'Agendada', '10100000001', 1),
('10:00:00', 'Retorno', 'Agendada', '10100000001', 2),
('14:00:00', 'Rotina Pediatria', 'Confirmada', '10100000002', 6),
('08:30:00', 'Avaliação Neurológica', 'Agendada', '10100000003', 3),
('11:00:00', 'Retorno Ortopedia', 'Cancelada', '10100000004', 4),
('15:00:00', 'Check-up Preventivo', 'Agendada', '10100000011', 5),
('16:00:00', 'Acompanhamento Oncologia', 'Confirmada', '10100000012', 7),
('09:30:00', 'Urgência Não Agendada', 'Realizada', '10100000013', 8),
('13:30:00', 'Rotina Geral', 'Realizada', '10100000014', 9),
('10:30:00', 'Crise de Enxaqueca', 'Agendada', '10100000015', 10);

-- 10 Linhas: exame
INSERT INTO exame (tipo, data_realizacao, resultado, id_prontuario_FK, cpf_medico_FK) VALUES
('Eletrocardiograma', '2026-06-25', 'Ritmo sinusal normal.', 1, '10100000001'),
('Hemograma Completo', '2026-06-25', 'Anemia leve identificada.', 2, '10100000001'),
('Glicemia em Jejum', '2026-06-25', 'Taxa normal de 85 mg/dL.', 6, '10100000002'),
('Ressonância Magnética', '2026-06-26', 'Ausência de lesões expansivas.', 3, '10100000003'),
('Raio-X Tornozelo', '2026-06-26', 'Fissura discreta no maleolo lateral.', 4, '10100000004'),
('Papanicolau', '2026-06-27', 'Negativo para malignidade.', 5, '10100000011'),
('Tomografia Computadorizada', '2026-06-27', 'Nódulo pulmonar estável.', 7, '10100000012'),
('Troponina', '2026-06-28', 'Valores de referência normais.', 8, '10100000013'),
('Ureia e Creatinina', '2026-06-28', 'Função renal preservada.', 9, '10100000014'),
('Eletroencefalograma', '2026-06-29', 'Atividade elétrica bem organizada.', 10, '10100000015');

-- 10 Linhas: fornecedor
INSERT INTO fornecedor (cnpj, nome_empresa, telefone, email) VALUES
('11000000000101', 'MedGeral Distribuidora S.A.', '1133331111', 'vendas@medgeral.com'),
('11000000000102', 'Eurofarma Laboratórios', '1133332222', 'hospitalar@eurofarma.com'),
('11000000000103', 'EMS Pharma Comercial', '1133333333', 'comercial@ems.com.br'),
('11000000000104', 'Prati Donaduzzi Indústria', '4532521111', 'vendas@pratidonaduzzi.com'),
('11000000000105', 'Bayer Medicamentos S.A.', '1133334444', 'suporte@bayer.com'),
('11000000000106', 'Aché Laboratórios', '1133335555', 'ache.hospitalar@ache.com'),
('11000000000107', 'Sanofi Medley Ltda', '1133336666', 'atendimento@medley.com'),
('11000000000108', 'Pfizer Brasil', '1133337777', 'institucional@pfizer.com'),
('11000000000109', 'Cristália Quim. Farm.', '1133338888', 'licitacao@cristalia.com.br'),
('11000000000110', 'Merck Sharp & Dohme', '1133339999', 'msd.responde@merck.com');


INSERT INTO medicamento (nome, principio_ativo, estoque_atual, estoque_minimo, id_fornecedor_FK) VALUES
('Amoxicilina 500mg', 'Amoxicilina Tri-hidratada', 150, 20, 1),
('Dipirona Sódica 500mg/mL', 'Dipirona Monoidratada', 500, 50, 2),
('Losartana Potássica 50mg', 'Losartana Potássica', 300, 30, 3),
('Ibuprofeno 600mg', 'Ibuprofeno', 200, 15, 4),
('Omeprazol 20mg', 'Omeprazol Magnésico', 400, 40, 5),
('Paracetamol 750mg', 'Paracetamol', 450, 50, 6),
('Metformina 850mg', 'Cloridrato de Metformina', 350, 30, 7),
('Clonazepam 2mg', 'Clonazepam', 100, 10, 8),
('Tramal 50mg', 'Cloridrato de Tramadol', 120, 15, 9),
('Simvastatina 20mg', 'Simvastatina', 250, 25, 10);

INSERT INTO receita (data, validade, quantidade_de_uso, id_consulta_FK) VALUES
('2026-06-25', '2026-07-25', '30 comprimidos', 1),
('2026-06-25', '2026-12-25', '60 comprimidos', 2),
('2026-06-25', '2026-07-05', '1 frasco de 150ml', 3),
('2026-06-26', '2026-07-26', '1 frasco de 20ml', 4),
('2026-06-27', '2026-08-27', '90 comprimidos', 6),
('2026-06-27', '2026-07-27', '10 ampolas', 7),
('2026-06-28', '2026-07-03', '20 comprimidos', 8),
('2026-06-28', '2026-09-28', '15 comprimidos', 9),
('2026-06-29', '2026-07-15', '40 comprimidos', 10),
('2026-06-25', '2026-08-25', '30 comprimidos', 1);


INSERT INTO item_receita (id_receita_FK, id_medicamento_FK, posologia) VALUES
(1, 3, 'Tomar 1 comprimido pela manhã em jejum continuamente.'),
(2, 5, 'Tomar 1 cápsula 30 minutos antes do café da manhã por 30 dias.'),
(3, 1, 'Tomar 1 comprimido de 8 em 8 horas durante 7 dias.'),
(4, 8, 'Tomar 5 gotas antes de dormir enquanto persistir a insônia.'),
(5, 7, 'Tomar 1 comprimido junto ao jantar diariamente.'),
(6, 9, 'Tomar 1 cápsula em caso de dor intensa, limite de 3x ao dia.'),
(7, 2, 'Tomar 1 comprimido de 6 em 6 horas se houver febre.'),
(8, 4, 'Tomar 1 comprimido de 12 em 12 horas por 5 dias.'),
(9, 6, 'Tomar 1 comprimido caso persistam as cefaleias.'),
(10, 10, 'Tomar 1 comprimido à noite antes de dormir.');


INSERT INTO localizacao (ala, quarto, leito, andar, bloco) VALUES
('Urgência', '101', 'Leito A', 1, 'Bloco A'),
('Urgência', '101', 'Leito B', 1, 'Bloco A'),
('Internação Geral', '202', 'Leito 01', 2, 'Bloco B'),
('Internação Geral', '202', 'Leito 02', 2, 'Bloco B'),
('Pediatria Ala Sul', '105', 'Berço 01', 1, 'Bloco A'),
('UTI Coronariana', '301', 'Box 01', 3, 'Bloco C'),
('UTI Coronariana', '301', 'Box 02', 3, 'Bloc C'),
('Recuperação Anestésica', '04', 'Leito X', 1, 'Bloco Cir'),
('Oncologia Isolamento', '405', 'Leito Único', 4, 'Bloco B'),
('Ortopedia Cuidados', '210', 'Leito 01', 2, 'Bloco B');


INSERT INTO internacao (data_entrada, data_saida, motivo, id_paciente_FK, id_local_FK, cpf_enfermeiro_FK) VALUES
('2026-06-15', '2026-06-18', 'Crise Hipertensiva severa controlada', 1, 1, '10100000005'),
('2026-06-19', NULL, 'Observação de pico febril pediátrico', 6, 5, '10100000007'),
('2026-06-20', NULL, 'Pós-operatório de Artroplastia Quadril', 4, 3, '10100000017'),
('2026-06-20', '2026-06-21', 'Ajuste de dosagem quimioterápica', 7, 9, '10100000018'),
('2026-06-21', NULL, 'Traumatismo craniano leve sob monitoramento', 3, 6, '10100000006'),
('2026-06-21', NULL, 'Desidratação profunda grave', 2, 2, '10100000019'),
('2026-06-22', NULL, 'Insuficiência respiratória aguda', 5, 7, '10100000020'),
('2026-06-22', '2026-06-23', 'Crise convulsiva focal recorrente', 10, 4, '10100000021'),
('2026-06-23', NULL, 'Suspeita de Apendicite aguda', 8, 8, '10100000022'),
('2026-06-23', NULL, 'Fratura exposta fêmur estabilizada', 9, 10, '10100000023');