USE agencia_viagens;

-- Consulta 1
-- Lista todos os clientes cadastrados no sistema em ordem alfabética.

SELECT *
FROM cliente
WHERE nome IS NOT NULL
ORDER BY nome;

-- Consulta 2
-- Exibe apenas os clientes cujo nome começa com a letra A.

SELECT *
FROM cliente
WHERE nome LIKE 'A%';

-- Consulta 3
-- Mostra os voos com preço entre R$ 500,00 e R$ 1.500,00.

SELECT *
FROM voo
WHERE preco BETWEEN 500 AND 1500;

-- Consulta 4
-- Lista as companhias aéreas originárias do Brasil ou dos Estados Unidos.

SELECT *
FROM companhia_aerea
WHERE pais_origem IN ('Brasil', 'Estados Unidos');

-- Consulta 5
-- Exibe os países de origem das companhias aéreas sem repetições.

SELECT DISTINCT pais_origem
FROM companhia_aerea
LIMIT 5;

-- Consulta 6
-- Relaciona cada cliente ao status de sua reserva.

SELECT c.nome,
r.status_reserva
FROM cliente c
INNER JOIN reserva r
ON c.id_cliente = r.id_cliente;

-- Consulta 7
-- Conta a quantidade de voos operados por cada companhia aérea.

SELECT ca.nome,
COUNT(v.id_voo) AS total_voos
FROM companhia_aerea ca
INNER JOIN voo v
ON ca.id_companhia = v.id_companhia
GROUP BY ca.nome;

-- Consulta 8
-- Calcula o valor total gasto por cada cliente em pagamentos.

SELECT c.nome,
SUM(p.valor) AS total_gasto
FROM cliente c
INNER JOIN reserva r
ON c.id_cliente = r.id_cliente
INNER JOIN pagamento p
ON r.id_reserva = p.id_reserva
GROUP BY c.nome;

-- Consulta 9
-- Calcula o preço médio dos voos por companhia aérea e exibe apenas médias superiores a R$ 1.000,00.

SELECT ca.nome,
AVG(v.preco) AS media_preco
FROM companhia_aerea ca
INNER JOIN voo v
ON ca.id_companhia = v.id_companhia
GROUP BY ca.nome
HAVING AVG(v.preco) > 1000;

-- Consulta 10
-- Identifica o maior e o menor preço de voo cadastrado no sistema.

SELECT
MAX(preco) AS maior_preco,
MIN(preco) AS menor_preco
FROM voo;
