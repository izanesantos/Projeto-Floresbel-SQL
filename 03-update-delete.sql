 use sistemas;
UPDATE Produto
SET Quantidade_Atual = 118
WHERE ID_Produto = 1;



UPDATE Produto
SET Preco_Unitario = 20.00
WHERE Nome LIKE '%Vaso Cerâmica%';


UPDATE Produto
SET ID_Localizacao = 4
WHERE ID_Produto = 4;



DELETE FROM Saida
WHERE Data_Saida < '2020-01-01';




DELETE FROM Produto p
WHERE p.Quantidade_Atual = 0
AND NOT EXISTS (SELECT 1 FROM Entrada e WHERE e.ID_Produto = p.ID_Produto)
AND NOT EXISTS (SELECT 1 FROM Inventario i WHERE i.ID_Produto = p.ID_Produto);



DELETE FROM Entrada
WHERE Quantidade_Entrada = 0;