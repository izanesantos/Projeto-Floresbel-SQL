use sistemas; 
CREATE TABLE Fornecedor (
ID_Fornecedor INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
CNPJ VARCHAR(20) UNIQUE NOT NULL,
Contato VARCHAR(100),
Tipo_Produto VARCHAR(100)
);

CREATE TABLE Localizacao (
ID_Localizacao INT AUTO_INCREMENT PRIMARY KEY,
Setor VARCHAR(50) NOT NULL,
Prateleira VARCHAR(50) NOT NULL,
Posicao VARCHAR(20) NOT NULL,
UNIQUE (Setor, Prateleira, Posicao)
);


CREATE TABLE Produto (
ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(200) NOT NULL,
Categoria VARCHAR(100),
Quantidade_Atual INT NOT NULL DEFAULT 0,
Preco_Unitario DECIMAL(10,2) DEFAULT 0.00,
Data_Validade DATE,
Estoque_Minimo INT DEFAULT 0,
ID_Fornecedor INT NOT NULL,
ID_Localizacao INT,
FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor),
FOREIGN KEY (ID_Localizacao) REFERENCES Localizacao(ID_Localizacao)
);


CREATE TABLE Entrada (
ID_Entrada INT AUTO_INCREMENT PRIMARY KEY,
Data_Entrada DATE NOT NULL,
Quantidade_Entrada INT NOT NULL,
ID_Produto INT NOT NULL,
ID_Fornecedor INT NOT NULL,
FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto),
FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);


CREATE TABLE Saida (
ID_Saida INT AUTO_INCREMENT PRIMARY KEY,
Data_Saida DATE NOT NULL,
Quantidade_Saida INT NOT NULL,
Destino VARCHAR(200),
ID_Produto INT NOT NULL,
FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);


CREATE TABLE Inventario (
ID_Inventario INT AUTO_INCREMENT PRIMARY KEY,
Data_Inventario DATE NOT NULL,
Quantidade_Contada INT NOT NULL,
ID_Produto INT NOT NULL,
FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);






