use sistemas;
INSERT INTO Fornecedor (Nome, CNPJ, Contato, Tipo_Produto) VALUES
('Floresbel Fornecimentos', '12.345.678/0001-90', 'contato@floresbel.com', 'Plantas e Vasos'),
('Distribuidora Fazone', '98.765.432/0001-55', 'vendas@fazonedistrib.com', 'Insumos');

INSERT INTO Localizacao (Setor, Prateleira, Posicao) VALUES
('A', 'P1', '01'),
('A', 'P1', '02'),
('B', 'P2', '01'),
('B', 'P3', '05');

INSERT INTO Produto (Nome, Categoria, Quantidade_Atual, Preco_Unitario, Data_Validade, Estoque_Minimo, ID_Fornecedor, ID_Localizacao)
VALUES
('Vaso Cerâmica 20cm', 'Vasos', 120, 25.00, NULL, 20, 1, 1),
('Terra Vegetal 5kg', 'Substratos', 40, 18.50, NULL, 10, 2, 2),
('Rosa Vermelha', 'Plantas', 15, 8.00, '2026-02-15', 10, 1, 3),
('Adubo Orgânico 2kg', 'Fertilizantes', 5, 12.00, NULL, 5, 2, 4),
('Orquídea Phalaenopsis', 'Plantas', 8, 45.00, '2025-12-10', 5, 1, 3);

INSERT INTO Entrada (Data_Entrada, Quantidade_Entrada, ID_Produto, ID_Fornecedor) VALUES
('2025-11-10', 50, 1, 1),
('2025-11-15', 30, 2, 2),
('2025-11-20', 20, 3, 1),
('2025-10-05', 10, 4, 2),
('2025-09-12', 5, 5, 1);

INSERT INTO Saida (Data_Saida, Quantidade_Saida, Destino, ID_Produto) VALUES
('2025-11-18', 10, 'Loja Centro', 1),
('2025-11-20', 5, 'Cliente Final', 3),
('2025-11-25', 2, 'Feira Livre', 5);

INSERT INTO Inventario (Data_Inventario, Quantidade_Contada, ID_Produto) VALUES
('2025-11-01', 118, 1),
('2025-11-01', 42, 2),
('2025-11-01', 14, 3),
('2025-11-01', 5, 4),
('2025-11-01', 10, 5);