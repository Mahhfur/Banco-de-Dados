-- TABLE
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE Fornecedor (
    fcod INT,
    fone NUMERIC(12),
    status VARCHAR(40),
    cidade VARCHAR(40),
    PRIMARY KEY (fcod)
);
CREATE TABLE Fornecimento (
    fcod INT,
    pcod INT,
    prcod INT,
    quantidade INT,
    FOREIGN KEY (fcod) REFERENCES Fornecedor(fcod) ON DELETE CASCADE,
    FOREIGN KEY (pcod) REFERENCES Peça(pcod) ON DELETE CASCADE,
    FOREIGN KEY (prcod) REFERENCES Projeto(prcod) ON DELETE CASCADE
);
CREATE TABLE Peça (
    pcod INT NOT NULL,
    pnome VARCHAR(40) NOT NULL,
    cor VARCHAR(10) NOT NULL,
    peso INT NOT NULL,
    cidade VARCHAR(40) NOT NULL,
    PRIMARY KEY (pcod)
);
CREATE TABLE Projeto (
    prcod INT,
    prnome VARCHAR(40),
    hora TIME,
    PRIMARY KEY (prcod)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
