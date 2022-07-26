-- comentario de linha
/*
comentario de bloco
*/

-- comando de criação de banco de dados
CREATE DATABASE db_lojinha;

USE db_lojinha;

CREATE TABLE tb_produtos(

	-- o atributo auto_increment só pode ser usado uma vez na tabela, no caso na chave primaria
	id BIGINT AUTO_INCREMENT,
	nome_produto VARCHAR(255),
    
    -- o decimal define a quantidade de numeros totais do campo, e quantos numeros você vai aceitar depois da virgula
	valor DECIMAL(10,2),
    quantidade INT,
    pagamento_cartao BOOLEAN,
    
    PRIMARY KEY(id) -- outra forma de indicar a primary key
);


-- comando que seleciona todos os campos e dados da tabela de produtos
SELECT * FROM tb_produtos;

-- insira dentro da tabela de produtos, nos campos de nome_produto, valor, quantidade e pagamento_cartão, os seguintes valores ...
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Calça",25.59,5,true);

INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Tenis",25.59,5,true);

UPDATE tb_produtos SET nome_produto = "camiseta" WHERE id=1;

DELETE FROM tb_produtos WHERE id=1;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%violeta%" OR nome_produto LIKE "t%" ;

SELECT nome, salario FROM  tb_info where id <1;


-- COMANDO PARA ALTERAR O TIPO DE DADO DE UMA COLUNA JA EXISTENTE
ALTER TABLE table_name
MODIFY COLUMN column_name VARCHAR(255);

-- COMANDO PARA ALTERAR NOME DE UMA COLUNA JA EXISTENTE 
ALTER TABLE table_name CHANGE old_column_name new_col_name varchar(255);


