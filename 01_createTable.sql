BEGIN TRANSACTION;


Create table cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT(15)
);
------------tabela pet------------

Create table pet (
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEX (30) NOT NULL,
    especie TEXT(30),
    idade INTEGER,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    
    );
    
--------tabela veterinario-----------

Create table veterinario (
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    crmv TEXT NOT NULL
     
    );
    
--------tabela consulta----------

Create table consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT NOT NULL,'YYYY-MM-DD'
    tipo_servico TEXT(100),
    id_pet INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY (id_pet)  REFERENCES pet(id_pet),
    FOREIGN KEY (id_veterinario)  REFERENCES veterinario(id_veterinario)
    );

ALTER TABLE consulta
ADD tipo_servico VARCHAR(100);

-------------tabela medicamento------
Create table medicamento(
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade INTEGER,
    validade_medicamento TEXT,
    id_consulta INTEGER,
    FOREIGN KEY(id_consulta) REFERENCES consulta(id_consulta)
    );
ALTER TABLE nome_da_tabela
ADD nova_coluna VARCHAR(100);

--------tabela medicamento_consulta-

Create table medicamento_consulta (
    id_consulta INTEGER,
    id_medicamento INTEGER,
    dose_aplicada TEXT,
    FOREIGN KEY (id_consulta)  REFERENCES consulta(id_consulta),
    FOREIGN KEY (id_medicamento)  REFERENCES medicamento(id_medicamento)
    );

---Insert---    
INSERT INTO cliente(nome, telefone)
VALUES
('ANA DE LIMA', '1199999-99'),
('Jose teste', '1198888-77'),
('MARIA DO CARMO', '11955555-44');

select * from cliente;

INSERT INTO Pet(nome, especie, idade, id_cliente)
VALUES
('Rex', 'Cachorro',5, 3),
('Cleyton', 'gato',4, 1),
('THOR', 'cachorro', 6, 2);

select * from Pet;


INSERT INTO veterinario(nome, crmv)
VALUES
('DRA.MARISA TESTE','SP1234'),
('DR.BRUNO CARVALHO', 'SP1020'),
('Dr.teste', 'GO1234');

select * from veterinario;

INSERT INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30','vacina',1, 1),
('2025-06-02','castracao',2, 2),
('2025-11-05','retorno',1, 1);

select * from consulta;

INSERT INTO medicamento(nome, quantidade,validade_medicamento, id_consulta)
VALUES
('vermit', 2, '2030-11-30',1),
('vermit02', 3, '2030-12-30',2),
('vermit03', 1, '2031-01-30',3);


select * from medicamento;


INSERT INTO medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1, '1 dose unica'),
(1, 2, 'Aplicar 2 gotas no ouvido'),
(3, 2, '1 comprimido');

desc medicamento_consulta

select * from medicamento/
-----update----

INSERT INTO cliente(nome, telefone)
VALUES   
('ANA DE LIMA' , '1199999-99'),
('Jose' , '1188888-77'),
('Paulo' , '1166666-55');
 
select * from cliente;
 
INSERT INTO pet(nome, especie, idade, id_cliente)
VALUES
('Mel', 'cachorro',5,3),
('belinha', 'cachorro',4,1),
('Thor' , 'cachorro',6,2);
 
Select * from Pet;
 
INSERT INTO veterinario (nome, crmv)
VALUES
('DRA.MARISA' , 'SP0302'),
('DRA.ANGELA' , 'SP1621'),
('DRA.FABIANA' , 'SP4152');
 
Select * from veterinario;
 
INSERT INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30' , 'vacina',1,1),
('2025-06-02' , 'castração',2,2),
('2025-11-03' , 'retorno',1,1);
 
Select * from consulta;
 
INSERT INTO medicamento(nome, quantidade, qualidade, validade_medicamento, id_consulta)
VALUES
('vermit' , 2, '2023-11-30',1),
('vermit02' ,3, '2023-12-30',2),
('vermit03' , 3, '2023-01-30',3);
 
INSERT INTO cliente(nome, telefone)
VALUES   
('ANA DE LIMA' , '1199999-99'),
('Jose' , '1188888-77'),
('Paulo' , '1166666-55');
 
select * from cliente;
 
INSERT INTO pet(nome, especie, idade, id_cliente)
VALUES
('Mel', 'cachorro',5,3),
('belinha', 'cachorro',4,1),
('Thor' , 'cachorro',6, 1);
 
Select * from Pet;

delete FROM pet
WHERE id_pet BETWEEN 5 AND 15;
 
INSERT INTO veterinario (nome, crmv)
VALUES
('DRA.MARISA' , 'SP0302'),
('DRA.ANGELA' , 'SP1621'),
('DRA.FABIANA' , 'SP4152');
 
Select * from veterinario;

delete FROM veterinario
WHERE id_veterinario BETWEEN 5 AND 15;
 
INSERT INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30' , 'vacina',1,1),
('2025-06-02' , 'castracao',2,2),
('2025-11-03' , 'retorno',1,1);
 
Select * from consulta;
 
INSERT INTO medicamento(nome, quantidade, validade_medicamento, id_consulta)
VALUES
('vermit' , 2, '2023-11-30',1),
('vermit02' ,3, '2023-12-30',2),
('vermit03' , 3, '2023-01-30',3);
 
Select * from medicamento;
 
 
INSERT INTO medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1,1, '1 dose unica'),
(1,2, 'aplicar duas gotas no ouvido'),
(3,2, '1 comprimido');
 
select * from medicamento_consulta;

select * from medicamento;


----update ---
 
UPDATE medicamento
 set nome ='dipirona'
 where id_medicamento =2;
 
 
 
select * from medicamento;
 

select 
    co.id_consulta,
    co.data,
    v.nome AS veterinario,
    v.crmv
From consulta co
JOIN veterinario v ON v.id_veterinario = co.id_veterinario;         

select * from cliente;

DELETE FROM cliente
WHERE id_cliente = 2;

UPDATE cliente
SET nome = 'José Aparecido'
WHERE nome = 'Jose teste';

select * from veterinario;

UPDATE veterinario
SET nome = 'DRA.TERESA CRISTINA'
WHERE nome = 'Dr.teste';

DELETE FROM veterinario
WHERE id_veterinario = 4;