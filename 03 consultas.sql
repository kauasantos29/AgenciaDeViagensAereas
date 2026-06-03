USE agencia_viagens;

SELECT * 
FROM cliente 
WHERE nome IS NOT NULL 
ORDER BY nome;


SELECT * 
FROM cliente 
WHERE nome LIKE 'A%'; 


SELECT * 
FROM voo 
WHERE preco BETWEEN 500 AND 1500;


SELECT * 
FROM companhia_aerea 
WHERE pais_origem IN ('Brasil','Estados Unidos'); 


SELECT DISTINCT pais_origem 
FROM companhia_aerea 
LIMIT 5;  


SELECT c.nome, 
r.status_reserva 
FROM cliente c 
INNER JOIN reserva r 
ON c.id_cliente = r.id_cliente; 


SELECT ca.nome, 
COUNT(v.id_voo) AS total_voos 
FROM companhia_aerea ca 
INNER JOIN voo v 
ON ca.id_companhia = v.id_companhia 
GROUP BY ca.nome;


SELECT c.nome, 
SUM(p.valor) AS total_gasto 
FROM cliente c 
INNER JOIN reserva r 
ON c.id_cliente = r.id_cliente 
INNER JOIN pagamento p 
ON r.id_reserva = p.id_reserva 
GROUP BY c.nome;


SELECT ca.nome, 
AVG(v.preco) AS media_preco 
FROM companhia_aerea ca 
INNER JOIN voo v 
ON ca.id_companhia = v.id_companhia 
GROUP BY ca.nome 
HAVING AVG(v.preco) > 1000; 


SELECT 
MAX(preco) AS maior_preco, 
MIN(preco) AS menor_preco 
FROM voo;
