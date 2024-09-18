CREATE DATABASE academia

CREATE TABLE cadastrocliente(
    cpf CHAR(15) primary key NOT NULL,
    nomecompleto VARCHAR(200) NOT NULL,
    datadenascimento DATE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    telefone INT(15) NOT NULL,
    cep INT(8) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero CHAR(8) NOT NULL,
    complemento VARCHAR(50),
    bairro CHAR(20) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(20) NOT NULL
);

INSERT INTO cliente(
    cpf,nomecompleto,datadenascimento,email,telefone,cep,rua,numero,complemento,bairro,cidade,estado
)

VALUES('123456','maria souza',1920-09-17, 'mariamaria@gmail.com',11987,04750000,'rua a','12a','jabaquara','sao paulo','sp'),
('45875','joaocabral', '1910-09-18','jj@gmail.com',11987.04750000,'rua b', '125','ap 12 bloco b','grajau', 'sao paulo', 'sp'),
('47895', 'jose alburquerque', '1910-09-18','jose@hotmail.com',11988,047850000, 'rua c','casa 01', 'interlagos','sao paulo','sp');

-- exibir todos os conteudos
 SELECT * FROM  cliente;

--  EXIBIR APENAS UM DADO MA TELA

SELECT nomecompleto FROM cliente WHERE nomecompleto = 'ana claudia cunha';

SELECT nomecompleto FROM cliente;

-- exibir duas colunas

SELECT nomecompleto, datadenascimento FROM cliente;

-- teste dados não cadastrados

SELECT nomecompleto FROM cadastrocliente WHERE nomecompleto = 'michele silva';

-- exbir na tela uma coluna com operação menor que <

SELECT telefone FROM cliente WHERE telefone < 58950

-- exbir na tela uma coluna com operação maior que >

SELECT cep FROM cliente where > 5

-- exibir na tela uma coluna com operação igual a =

SELECT cep FROM cliente WHERE cep = 047850000

--  selecionar dados de uma coluna onde tenha a palavra
SELECT * FROM cliente where nomecompleto '%ana%';

--  selecionar dados de uma coluna onde não tenhas

SELECT * from cliente where nomecompleto not like '%ana%'

-- ordenando todos os dados da tebala em ordem ascedente/crescente

SELECT * FROM cliente ORDER BY nomecompleto ASC;

SELECT * FROM cliente order by;

SELECT * FROM cliente ORDER BY nomecompleto desc;


 