/* Modelo_Logico_CALINT: */

CREATE TABLE data (
    id INTEGER PRIMARY KEY,
    data TEXT UNIQUE,
    data_categoria_id INTEGER
);

CREATE TABLE evento (
    id INTEGER PRIMARY KEY,
    descricao TEXT,
    evento TEXT,
    evento_categoria_id TEXT
);

CREATE TABLE data_categoria (
    id INTEGER PRIMARY KEY,
    descricao TEXT,
    categoria TEXT UNIQUE
);

CREATE TABLE evento_categoria (
    id INTEGER PRIMARY KEY,
    categoria TEXT UNIQUE,
    descricao TEXT
);

CREATE TABLE evento_data (
    data_id INTEGER,
    evento_id INTEGER,
    PRIMARY KEY (data_id, evento_id)
);
 
ALTER TABLE data ADD CONSTRAINT FK_data_2
    FOREIGN KEY (data_categoria_id)
    REFERENCES data_categoria (id)
    ON DELETE CASCADE;
 
ALTER TABLE evento ADD CONSTRAINT FK_evento_2
    FOREIGN KEY (evento_categoria_id???)
    REFERENCES evento_categoria (???)
    ON DELETE CASCADE;
 
ALTER TABLE evento_data ADD CONSTRAINT FK_evento_data_1
    FOREIGN KEY (data_id)
    REFERENCES data (id);
 
ALTER TABLE evento_data ADD CONSTRAINT FK_evento_data_2
    FOREIGN KEY (evento_id)
    REFERENCES evento (id);