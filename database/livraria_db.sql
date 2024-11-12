/* Logico_Livraria_130523: */

----DROP TABLE IF EXISTS cliente;
CREATE TABLE IF NOT EXISTS cliente (
    cod_cliente INTEGER PRIMARY KEY,
    nome TEXT,
    telefone1 TEXT,
    telefone2 TEXT,
    rua TEXT,
    bairro TEXT,
    cidade TEXT,
    estado TEXT,
    email TEXT
);

--DROP TABLE IF EXISTS livro;
CREATE TABLE IF NOT EXISTS livro (
    cod_livro INTEGER PRIMARY KEY,
    cod_editora INTEGER,
    valor REAL,
    catgoria TEXT,
    titulo TEXT,
    nome_autor TEXT,
    ano_publicacao INTEGER,
    ISBN TEXT,
    FOREIGN KEY(cod_editora) REFERENCES editora(cod_editora)
);

--DROP TABLE IF EXISTS estoque;
CREATE TABLE IF NOT EXISTS estoque (
    cod_livro INTEGER PRIMARY KEY,
    qtde_estoque INTEGER,
    FOREIGN KEY(cod_livro) REFERENCES livro(cod_livro)
);

--DROP TABLE IF EXISTS editora;
CREATE TABLE IF NOT EXISTS editora (
    cod_editora INTEGER PRIMARY KEY,
    telefone1 TEXT,
    telefone2 TEXT,
    nome TEXT,
    email TEXT,
    consultor_vendas TEXT
);

--DROP TABLE IF EXISTS pedido;
CREATE TABLE IF NOT EXISTS pedido (
    cod_pedido INTEGER PRIMARY KEY,
    cod_cliente INTEGER,
    Data date,
    valor_pedido REAL,
    FOREIGN KEY(cod_cliente) REFERENCES cliente(cod_cliente)
);

--DROP TABLE IF EXISTS itens_pedido;
CREATE TABLE IF NOT EXISTS itens_pedido (
    cod_pedido INTEGER,
    cod_livro INTEGER,
    quantidade INTEGER,
    valor_unitario REAL,
    PRIMARY KEY (cod_livro, cod_pedido),
    FOREIGN KEY(cod_pedido) REFERENCES pedido(cod_pedido),
    FOREIGN KEY(cod_livro) REFERENCES livro(cod_livro)
);
 
