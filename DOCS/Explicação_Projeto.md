# Projeto Acadêmico de Banco de Dados – Agência de Viagens

## Descrição do Projeto

Este projeto foi desenvolvido para a disciplina de Banco de Dados com o objetivo de modelar e implementar um sistema de gerenciamento para uma agência de viagens. O sistema permite o cadastro e controle de clientes, voos, companhias aéreas, aeroportos, aeronaves, agentes de viagem, reservas e pagamentos.

A proposta busca representar situações reais do setor de turismo, possibilitando o armazenamento organizado das informações e a realização de consultas para apoio à gestão das operações da agência.

---

## Objetivos

O principal objetivo do projeto é aplicar conceitos de modelagem de dados e implementação de bancos de dados relacionais, incluindo:

* Criação de entidades e relacionamentos;
* Definição de chaves primárias e estrangeiras;
* Aplicação de regras de integridade;
* Utilização de restrições (CHECK, UNIQUE e NOT NULL);
* Inserção de dados para testes;
* Elaboração de consultas SQL para extração de informações.

---

## Estrutura do Banco de Dados

O banco de dados foi denominado **agencia_viagens** e é composto pelas seguintes tabelas:

### Cliente

Armazena os dados dos clientes cadastrados na agência, como nome, CPF, e-mail, telefone e data de cadastro.

### Companhia Aérea

Contém informações das companhias responsáveis pelos voos disponíveis.

### Aeronave

Registra os modelos de aeronaves e suas capacidades de passageiros.

### Aeroporto

Armazena informações dos aeroportos de origem e destino dos voos.

### Agente de Viagem

Responsável pelo cadastro dos agentes que realizam o atendimento e gerenciamento das reservas.

### Voo

Tabela central do sistema, contendo informações sobre os voos, datas, horários, preços, companhia aérea, aeronave utilizada e aeroportos envolvidos.

### Reserva

Controla as reservas realizadas pelos clientes, registrando a data da reserva e seu status.

### Pagamento

Armazena os pagamentos associados às reservas.

### Reserva_Voo

Tabela associativa responsável pelo relacionamento entre reservas e voos.

### Reserva_Agente

Tabela associativa responsável pelo relacionamento entre reservas e agentes de viagem.

---

## Regras de Negócio Implementadas

* Cada cliente possui CPF e e-mail únicos.
* Cada companhia aérea possui nome único.
* A capacidade das aeronaves deve ser maior que zero.
* O preço dos voos deve ser maior que zero.
* Uma reserva pode possuir os status:

  * PENDENTE
  * CONFIRMADA
  * CANCELADA
* Cada pagamento está vinculado a apenas uma reserva.
* As relações entre as tabelas são garantidas por chaves estrangeiras.

---

## Dados de Teste

Foram inseridos registros de exemplo em todas as tabelas do banco de dados para simular o funcionamento de uma agência de viagens real, incluindo:

* Clientes;
* Companhias aéreas nacionais e internacionais;
* Aeronaves;
* Aeroportos;
* Agentes de viagem;
* Voos;
* Reservas;
* Pagamentos.

---

## Consultas Desenvolvidas

O projeto contém consultas SQL que demonstram diferentes operações de manipulação e recuperação de dados, tais como:

* Listagem de clientes;
* Busca por nomes utilizando LIKE;
* Filtro de voos por faixa de preço;
* Seleção de companhias por país de origem;
* Uso de DISTINCT e LIMIT;
* Junções (INNER JOIN);
* Funções de agregação (COUNT, SUM, AVG, MAX e MIN);
* Agrupamentos com GROUP BY;
* Filtros utilizando HAVING.

---

## Conclusão

O projeto permitiu aplicar na prática os principais conceitos estudados na disciplina de Banco de Dados, desde a modelagem conceitual até a implementação física do banco e a realização de consultas SQL. A estrutura desenvolvida representa um sistema simplificado de agência de viagens, demonstrando a utilização adequada de relacionamentos, integridade referencial e manipulação de dados em um ambiente relacional.
