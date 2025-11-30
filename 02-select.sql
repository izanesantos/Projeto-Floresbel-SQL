use sistemas;
SELECT p.ID_Produto, p.Nome, p.Quantidade_Atual, p.Estoque_Minimo
FROM Produto p
WHERE p.Quantidade_Atual <= p.Estoque_Minimo
ORDER BY p.Quantidade_Atual ASC;



SELECT e.ID_Entrada, e.Data_Entrada, p.Nome AS Produto, f.Nome AS Fornecedor, e.Quantidade_Entrada
FROM Entrada e
JOIN Produto p ON e.ID_Produto = p.ID_Produto
JOIN Fornecedor f ON e.ID_Fornecedor = f.ID_Fornecedor
WHERE e.Data_Entrada >= DATE_SUB(CURRENT_DATE, INTERVAL 30 DAY)
ORDER BY e.Data_Entrada DESC;


SELECT i.ID_Inventario, p.Nome AS Produto, i.Data_Inventario, i.Quantidade_Contada
FROM Inventario i
JOIN Produto p ON i.ID_Produto = p.ID_Produto
ORDER BY p.Nome, i.Data_Inventario DESC;



SELECT f.Nome AS Fornecedor, p.Nome AS Produto, SUM(e.Quantidade_Entrada) AS Total_Recebido
FROM Fornecedor f
JOIN Produto p ON p.ID_Fornecedor = f.ID_Fornecedor
LEFT JOIN Entrada e ON e.ID_Produto = p.ID_Produto
GROUP BY f.Nome, p.Nome
ORDER BY f.Nome, Total_Recebido DESC;



SELECT ID_Produto, Nome, Data_Validade
FROM Produto
WHERE Data_Validade IS NOT NULL
AND Data_Validade <= DATE_ADD(CURRENT_DATE, INTERVAL 60 DAY)
ORDER BY Data_Validade ASC;






