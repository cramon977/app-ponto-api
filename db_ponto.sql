create database Aplicacao_de_ponto
default charset utf8
collate utf8_general_ci;

use Aplicacao_de_Ponto;

CREATE TABLE IF NOT EXISTS empresa (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
identificacao_fiscal VARCHAR(20) NOT NULL UNIQUE,
pessoa_de_contato VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL ,
telefone VARCHAR(20) NOT NULL,
endereco VARCHAR(50) NOT NULL,
website VARCHAR(30) NOT NULL

) ENGINE=InnoDB , DEFAULT CHARSET = utf8; 

CREATE TABLE IF NOT EXISTS funcionarios (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fk_empresa INT(11) NOT NULL,
nome VARCHAR(50) NOT NULL,
cpf INT(20) NOT NULL UNIQUE,
email VARCHAR(30) NOT NULL,
FOREIGN KEY (fk_empresa)
REFERENCES empresa(id)
) ENGINE=InnoDB, DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS registro_ponto (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
data_hora DATETIME NOT NULL,
localizacao INT(20) NOT NULL, 
fk_id_funcionario INT NOT NULL,
FOREIGN KEY(fk_id_funcionario)
REFERENCES funcionarios(id) 
)ENGINE=InnoDB, DEFAULT CHARSET = utf8; 

DESCRIBE registro_ponto;
DESCRIBE funcionarios;
DESCRIBE empresa;
