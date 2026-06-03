# Dicionário de Dados – Sistema de Agência de Viagens

## Tabela: cliente

| Campo         | Tipo         | Restrições           | Descrição                        |
| ------------- | ------------ | -------------------- | -------------------------------- |
| id_cliente    | INT          | PK, AUTO_INCREMENT   | Identificador único do cliente.  |
| nome          | VARCHAR(120) | NOT NULL             | Nome completo do cliente.        |
| cpf           | CHAR(11)     | NOT NULL, UNIQUE     | CPF do cliente.                  |
| email         | VARCHAR(120) | NOT NULL, UNIQUE     | E-mail do cliente.               |
| telefone      | VARCHAR(20)  | NULL                 | Número de telefone para contato. |
| data_cadastro | DATE         | DEFAULT CURRENT_DATE | Data de cadastro do cliente.     |

---

## Tabela: companhia_aerea

| Campo        | Tipo         | Restrições         | Descrição                         |
| ------------ | ------------ | ------------------ | --------------------------------- |
| id_companhia | INT          | PK, AUTO_INCREMENT | Identificador da companhia aérea. |
| nome         | VARCHAR(100) | NOT NULL, UNIQUE   | Nome da companhia aérea.          |
| pais_origem  | VARCHAR(60)  | NOT NULL           | País de origem da companhia.      |

---

## Tabela: aeronave

| Campo       | Tipo         | Restrições                      | Descrição                         |
| ----------- | ------------ | ------------------------------- | --------------------------------- |
| id_aeronave | INT          | PK, AUTO_INCREMENT              | Identificador da aeronave.        |
| modelo      | VARCHAR(100) | NOT NULL                        | Modelo da aeronave.               |
| capacidade  | INT          | NOT NULL, CHECK(capacidade > 0) | Quantidade máxima de passageiros. |

---

## Tabela: aeroporto

| Campo        | Tipo         | Restrições         | Descrição                                |
| ------------ | ------------ | ------------------ | ---------------------------------------- |
| id_aeroporto | INT          | PK, AUTO_INCREMENT | Identificador do aeroporto.              |
| nome         | VARCHAR(120) | NOT NULL           | Nome do aeroporto.                       |
| cidade       | VARCHAR(80)  | NOT NULL           | Cidade onde o aeroporto está localizado. |
| estado       | VARCHAR(50)  | NULL               | Estado ou região administrativa.         |
| pais         | VARCHAR(50)  | NOT NULL           | País do aeroporto.                       |

---

## Tabela: agente_viagem

| Campo     | Tipo         | Restrições         | Descrição                           |
| --------- | ------------ | ------------------ | ----------------------------------- |
| id_agente | INT          | PK, AUTO_INCREMENT | Identificador do agente de viagens. |
| nome      | VARCHAR(100) | NOT NULL           | Nome completo do agente.            |
| email     | VARCHAR(120) | NOT NULL, UNIQUE   | E-mail profissional do agente.      |

---

## Tabela: voo

| Campo        | Tipo          | Restrições                 | Descrição                       |
| ------------ | ------------- | -------------------------- | ------------------------------- |
| id_voo       | INT           | PK, AUTO_INCREMENT         | Identificador do voo.           |
| numero_voo   | VARCHAR(20)   | NOT NULL, UNIQUE           | Código do voo.                  |
| data_partida | DATETIME      | NOT NULL                   | Data e horário de partida.      |
| data_chegada | DATETIME      | NOT NULL                   | Data e horário de chegada.      |
| preco        | DECIMAL(10,2) | NOT NULL, CHECK(preco > 0) | Valor da passagem aérea.        |
| id_companhia | INT           | FK, NOT NULL               | Companhia responsável pelo voo. |
| id_aeronave  | INT           | FK, NOT NULL               | Aeronave utilizada no voo.      |
| id_origem    | INT           | FK, NOT NULL               | Aeroporto de origem.            |
| id_destino   | INT           | FK, NOT NULL               | Aeroporto de destino.           |

---

## Tabela: reserva

| Campo          | Tipo        | Restrições           | Descrição                                                |
| -------------- | ----------- | -------------------- | -------------------------------------------------------- |
| id_reserva     | INT         | PK, AUTO_INCREMENT   | Identificador da reserva.                                |
| data_reserva   | DATE        | DEFAULT CURRENT_DATE | Data em que a reserva foi criada.                        |
| status_reserva | VARCHAR(20) | CHECK                | Situação da reserva (PENDENTE, CONFIRMADA ou CANCELADA). |
| id_cliente     | INT         | FK, NOT NULL         | Cliente responsável pela reserva.                        |

---

## Tabela: pagamento

| Campo           | Tipo          | Restrições                 | Descrição                              |
| --------------- | ------------- | -------------------------- | -------------------------------------- |
| id_pagamento    | INT           | PK, AUTO_INCREMENT         | Identificador do pagamento.            |
| valor           | DECIMAL(10,2) | NOT NULL, CHECK(valor > 0) | Valor pago pela reserva.               |
| forma_pagamento | VARCHAR(30)   | NOT NULL                   | Forma utilizada para pagamento.        |
| data_pagamento  | DATE          | NOT NULL                   | Data em que o pagamento foi realizado. |
| id_reserva      | INT           | FK, UNIQUE, NOT NULL       | Reserva associada ao pagamento.        |

---

## Tabela: reserva_voo

Tabela associativa responsável pelo relacionamento N:N entre reservas e voos.

| Campo      | Tipo | Restrições | Descrição                 |
| ---------- | ---- | ---------- | ------------------------- |
| id_reserva | INT  | PK, FK     | Identificador da reserva. |
| id_voo     | INT  | PK, FK     | Identificador do voo.     |

---

## Tabela: reserva_agente

Tabela associativa responsável pelo relacionamento N:N entre reservas e agentes de viagem.

| Campo      | Tipo | Restrições | Descrição                            |
| ---------- | ---- | ---------- | ------------------------------------ |
| id_reserva | INT  | PK, FK     | Identificador da reserva.            |
| id_agente  | INT  | PK, FK     | Identificador do agente responsável. |

---

# Resumo dos Relacionamentos

| Relacionamento             | Cardinalidade |
| -------------------------- | ------------- |
| Cliente → Reserva          | 1:N           |
| Reserva → Pagamento        | 1:1           |
| Companhia Aérea → Voo      | 1:N           |
| Aeronave → Voo             | 1:N           |
| Aeroporto → Voo (Origem)   | 1:N           |
| Aeroporto → Voo (Destino)  | 1:N           |
| Reserva ↔ Voo              | N:N           |
| Reserva ↔ Agente de Viagem | N:N           |

---

# Regras de Integridade Aplicadas

* Todas as tabelas possuem chave primária (PRIMARY KEY).
* Todas as relações utilizam chaves estrangeiras (FOREIGN KEY).
* CPF, e-mail de clientes, e-mail de agentes e número do voo possuem restrição UNIQUE.
* Os campos obrigatórios utilizam NOT NULL.
* Foram implementadas restrições CHECK para validação de domínio dos dados.
* Foram implementados valores padrão (DEFAULT) para datas de cadastro e reserva.
* As ações ON UPDATE e ON DELETE garantem a integridade referencial do banco de dados.
