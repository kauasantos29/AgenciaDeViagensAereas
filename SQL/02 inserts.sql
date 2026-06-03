INSERT INTO cliente (nome, cpf, email, telefone) VALUES
	('Carlos Eduardo Silva', '14258392104', 'carlosedu.silva92@gmail.com', '(11) 99888-7766'),
	('Mariana Costa Souza', '38910247588', 'mari.costasouza@outlook.com', '(21) 98765-4321'),
	('Lucas Gabriel Santos', '05439211823', 'lucas.gabriel.santos@uol.com.br', '(31) 99123-4567'),
	('Beatriz Alves Ribeiro', '71240583951', 'biaribeiro.2001@gmail.com', '(11) 97654-3210'),
	('Rodrigo Pereira Lima', '29561834706', 'rodrigo.plima@hotmail.com', '(81) 98877-6655'),
	('Amanda Martins Vieira', '83102947612', 'amanda.mvieira@yahoo.com', '(71) 99234-5678'),
	('Felipe Augusto Melo', '40392815765', 'felipe.melo.augusto@gmail.com', '(51) 98111-2233'),
	('Juliana Mendes Rocha', '62718493044', 'ju.mendesrocha@outlook.com', '(41) 99665-4433'),
	('Gustavo Henrique Dias', '95130628477', 'gustavoh.dias@gmail.com', '(61) 98989-7676'),
	('Camila Fernandes Lima', '18473920590', 'camila.f.lima@uol.com.br', '(85) 98741-2580'),
	('Thiago Alexandre Cruz', '50281436918', 'thiago.cruz.alexandre@gmail.com', '(27) 99321-6549'),
	('Larissa Soares Gomes', '36925814722', 'larissa.soaresg@hotmail.com', '(91) 98254-1122'),
	('Bruno Vinicius Ramos', '01593482653', 'bruno.vramos@gmail.com', '(19) 99551-3344'),
	('Leticia Oliveira Duarte', '84619273531', 'leticia.oduarte@outlook.com', '(48) 98412-7788'),
	('Mateus Barbosa Fonseca', '67348129509', 'mateus.bfonseca@yahoo.com', '(32) 99911-5566')
;


INSERT INTO companhia_aerea (nome, pais_origem) VALUES
	('Azul', 'Brasil'),
	('Gol', 'Brasil'),
	('Voepass', 'Brasil'),
	('American Airlines', 'Estados Unidos'),
	('Delta Air Lines', 'Estados Unidos'),
	('United Airlines', 'Estados Unidos'),
	('Lufthansa', 'Alemanha'),
	('Air France', 'Franca'),
	('British Airways', 'Reino Unido'),
	('Iberia', 'Espanha'),
	('TAP Air Portugal', 'Portugal'),
	('Emirates', 'Emirados Arabes Unidos'),
	('Qatar Airways', 'Catar'),
	('Copa Airlines', 'Panama'),
	('Aerolineas Argentinas', 'Argentina')
;


INSERT INTO aeronave (modelo, capacidade) VALUES
	('Boeing 737-800', 189),
	('Airbus A321neo', 240),
	('Boeing 777-300ER', 396),
	('Airbus A350-900', 325),
	('Boeing 787-9 Dreamliner', 296),
	('Embraer E195-E2', 146),
	('Airbus A330-900neo', 287),
	('Boeing 747-8i', 410),
	('ATR 72-600', 78),
	('Embraer E175', 76),
	('Airbus A220-300', 150),
	('Boeing 767-300ER', 269),
	('Airbus A380-800', 525),
	('CRJ-900', 90),
	('COMAC C919', 168)
;


INSERT INTO aeroporto (nome, cidade, estado, pais) VALUES
	('Aeroporto Internacional de Guarulhos', 'Guarulhos', 'SP', 'Brasil'),
	('Aeroporto Internacional do Galeao', 'Rio de Janeiro', 'RJ', 'Brasil'),
	('Aeroporto Internacional de Brasilia', 'Brasília', 'DF', 'Brasil'),
	('Aeroporto Internacional de John F. Kennedy', 'Nova York', 'NY', 'Estados Unidos'),
	('Aeroporto Internacional de Hartsfield-Jackson', 'Atlanta', 'GA', 'Estados Unidos'),
	('Aeroporto de Frankfurt', 'Frankfurt', 'Hesse', 'Alemanha'),
	('Aeroporto de Paris-Charles de Gaulle', 'Paris', 'Ilha de Franca', 'Franca'),
	('Aeroporto de Londres Heathrow', 'Londres', 'Inglaterra', 'Reino Unido'),
	('Aeroporto Adolfo Suarez Madrid-Barajas', 'Madrid', 'Madrid', 'Espanha'),
	('Aeroporto de Lisboa', 'Lisboa', 'Lisboa', 'Portugal'),
	('Aeroporto Internacional de Dubai', 'Dubai', 'Dubai', 'Emirados Arabes Unidos'),
	('Aeroporto Internacional de Hamad', 'Doha', 'Doha', 'Catar'),
	('Aeroporto Internacional Tocumen', 'Cidade do Panama', 'Panama', 'Panama'),
	('Aeroporto Internacional Ministro Pistarini', 'Ezeiza', 'Buenos Aires', 'Argentina'),
	('Aeroporto Internacional de Chicago O''Hare', 'Chicago', 'IL', 'Estados Unidos')
;


INSERT INTO agente_viagem (nome, email) VALUES
	('Marcos Roberto Souza', 'marcos.souza.agente@outlook.com'),
	('Fernanda Lima Castro', 'fernanda.castro.viagens@gmail.com'),
	('Ricardo Augusto Alves', 'ricardo.alves.turismo@uol.com.br'),
	('Camila Rodrigues Melo', 'camila.melo.agente@gmail.com'),
	('Bruno Fonseca Vieira', 'bruno.fonseca.viagens@hotmail.com'),
	('Patricia Mendes Rocha', 'patricia.rocha.turismo@outlook.com'),
	('Diego Antunes Silva', 'diego.silva.agente@gmail.com'),
	('Juliana Barbosa Costa', 'juliana.costa.viagens@yahoo.com'),
	('Gabriel Diniz Soares', 'gabriel.diniz.turismo@uol.com.br'),
	('Aline Teixeira Martins', 'aline.martins.agente@gmail.com'),
	('Lucas Carvalho Ramos', 'lucas.ramos.viagens@hotmail.com'),
	('Leticia Peixoto Duarte', 'leticia.duarte.turismo@outlook.com'),
	('Thiago Nogueira Lima', 'thiago.lima.agente@gmail.com'),
	('Vanessa Guimaraes Reis', 'vanessa.reis.viagens@yahoo.com'),
	('Rodrigo Freitas Neves', 'rodrigo.neves.turismo@gmail.com')
;


INSERT INTO voo (numero_voo, data_partida, data_chegada, preco, id_companhia, id_aeronave, id_origem, id_destino) VALUES
	('AD2014', '2026-07-05 07:15:00', '2026-07-05 08:25:00', 450.00, 1, 6, 1, 2),
	('G31542', '2026-07-05 10:30:00', '2026-07-05 12:10:00', 520.50, 2, 1, 2, 3),
	('AA9501', '2026-07-06 21:00:00', '2026-07-07 06:15:00', 3850.00, 4, 3, 1, 4),
	('DL4210', '2026-07-06 22:45:00', '2026-07-07 07:30:00', 4100.00, 5, 5, 2, 5),
	('LH5002', '2026-07-08 18:30:00', '2026-07-09 10:15:00', 5200.00, 7, 4, 1, 6),
	('AF1204', '2026-07-08 16:20:00', '2026-07-09 08:45:00', 4980.00, 8, 7, 2, 7),
	('BA0246', '2026-07-10 15:00:00', '2026-07-11 06:50:00', 5500.00, 9, 8, 3, 8),
	('IB6824', '2026-07-10 14:15:00', '2026-07-11 05:20:00', 4700.00, 10, 2, 1, 9),
	('TP0088', '2026-07-12 17:50:00', '2026-07-13 06:00:00', 4250.00, 11, 7, 2, 10),
	('EK2622', '2026-07-12 01:25:00', '2026-07-12 22:55:00', 7800.00, 12, 13, 1, 11),
	('QR0780', '2026-07-14 03:15:00', '2026-07-14 23:10:00', 8150.00, 13, 4, 1, 12),
	('CM0402', '2026-07-14 02:40:00', '2026-07-14 09:15:00', 2900.00, 14, 2, 3, 13),
	('AR1240', '2026-07-16 09:50:00', '2026-07-16 13:10:00', 1650.00, 15, 1, 1, 14),
	('UA0846', '2026-07-16 23:30:00', '2026-07-17 08:05:00', 3900.00, 6, 5, 3, 15),
	('PT0042', '2026-07-18 11:15:00', '2026-07-18 12:45:00', 380.00, 3, 9, 1, 3)
;


INSERT INTO reserva (data_reserva, status_reserva, id_cliente) VALUES
	('2026-06-01', 'CONFIRMADA', 1),
	('2026-05-01', 'CONFIRMADA', 2),
	('2026-06-02', 'PENDENTE', 3),
	('2026-05-02', 'CONFIRMADA', 4),
	('2026-06-05', 'CANCELADA', 5),
	('2026-06-02', 'CONFIRMADA', 6),
	('2026-06-06', 'PENDENTE', 7),
	('2026-05-02', 'CONFIRMADA', 8),
	('2026-06-02', 'CONFIRMADA', 9),
	('2026-05-07', 'CANCELADA', 10),
	('2026-06-02', 'CONFIRMADA', 11),
	('2026-05-02', 'PENDENTE', 12),
	('2026-06-08', 'CONFIRMADA', 13),
	('2026-06-02', 'CONFIRMADA', 14),
	('2026-06-02', 'CONFIRMADA', 15)
;


INSERT INTO pagamento (valor, forma_pagamento, data_pagamento, id_reserva) VALUES
	(450.00, 'Cartao de Credito', '2026-06-01', 1),
	(520.50, 'Pix', '2026-05-01', 2),
	(4100.00, 'Boleto Bancario', '2026-06-02', 3),
	(4980.00, 'Cartao de Credito', '2026-05-02', 4),
	(4700.00, 'Pix', '2026-06-05', 5),
	(4250.00, 'Cartao de Credito', '2026-06-02', 6),
	(7800.00, 'Pix', '2026-06-06', 7),
	(490.00, 'Cartao de Credito', '2026-05-02', 8),
	(1520.50, 'Pix', '2026-06-02', 9),
	(4000.00, 'Boleto Bancario', '2026-05-07', 10),
	(4180.00, 'Cartao de Credito', '2026-06-02', 11),
	(4090.00, 'Pix', '2026-05-02', 12),
	(3250.00, 'Cartao de Credito', '2026-06-08', 13),
	(2250.00, 'Cartao de Credito', '2026-06-02', 14),
	(4600.00, 'Pix', '2026-06-02', 15)
;


INSERT INTO reserva_voo (id_reserva, id_voo) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15)
;


INSERT INTO reserva_agente (id_reserva, id_agente) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15)
;
