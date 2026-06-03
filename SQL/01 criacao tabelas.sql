CREATE DATABASE agencia_viagens;
USE agencia_viagens;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    email VARCHAR(120) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    data_cadastro DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE companhia_aerea (
    id_companhia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    pais_origem VARCHAR(60) NOT NULL
);

CREATE TABLE aeronave (
    id_aeronave INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    capacidade INT NOT NULL,
    CHECK (capacidade > 0)
);

CREATE TABLE aeroporto (
    id_aeroporto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cidade VARCHAR(80) NOT NULL,
    estado VARCHAR(50),
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE agente_viagem (
    id_agente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE voo (
    id_voo INT AUTO_INCREMENT PRIMARY KEY,
    numero_voo VARCHAR(20) NOT NULL UNIQUE,
    data_partida DATETIME NOT NULL,
    data_chegada DATETIME NOT NULL,
    preco DECIMAL(10,2) NOT NULL,

    id_companhia INT NOT NULL,
    id_aeronave INT NOT NULL,
    id_origem INT NOT NULL,
    id_destino INT NOT NULL,

    CHECK (preco > 0),

    FOREIGN KEY (id_companhia)
        REFERENCES companhia_aerea(id_companhia)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (id_aeronave)
        REFERENCES aeronave(id_aeronave)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (id_origem)
        REFERENCES aeroporto(id_aeroporto)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (id_destino)
        REFERENCES aeroporto(id_aeroporto)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,

    data_reserva DATE DEFAULT (CURRENT_DATE),

    status_reserva VARCHAR(20)
    DEFAULT 'PENDENTE',

    id_cliente INT NOT NULL,

    CHECK (
      status_reserva IN
      ('PENDENTE','CONFIRMADA','CANCELADA')
    ),

    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,

    valor DECIMAL(10,2) NOT NULL,

    forma_pagamento VARCHAR(30) NOT NULL,

    data_pagamento DATE NOT NULL,

    id_reserva INT NOT NULL UNIQUE,

    CHECK (valor > 0),

    FOREIGN KEY (id_reserva)
        REFERENCES reserva(id_reserva)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE reserva_voo (
    id_reserva INT,
    id_voo INT,

    PRIMARY KEY(id_reserva,id_voo),

    FOREIGN KEY (id_reserva)
        REFERENCES reserva(id_reserva)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (id_voo)
        REFERENCES voo(id_voo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE reserva_agente (
    id_reserva INT,
    id_agente INT,

    PRIMARY KEY(id_reserva,id_agente),

    FOREIGN KEY (id_reserva)
        REFERENCES reserva(id_reserva)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (id_agente)
        REFERENCES agente_viagem(id_agente)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
