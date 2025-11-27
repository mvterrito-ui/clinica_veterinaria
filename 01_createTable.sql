BEGIN TRANSACTION;


Create table cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT(15)
);
------------tabela pet------------

Create table pet (
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT (30) NOT NULL,
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
    data TEXT NOT NULL,
    tipo_servico VARCHAR(100),
    id_pet INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY (id_pet)  REFERENCES pet(id_pet),
    FOREIGN KEY (id_veterinario)  REFERENCES veterinario(id_veterinario)
    );


-------------tabela medicamento------
Create table medicamento(
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade INTEGER,
    validade_medicamento TEXT,
    id_consulta INTEGER,
    FOREIGN KEY(id_consulta) REFERENCES consulta(id_consulta)
    );

--------tabela medicamento_consulta-

CREATE TABLE medicamento_consulta (
    id_consulta INTEGER,
    id_medicamento INTEGER,
    dose_aplicada TEXT,
    PRIMARY KEY (id_consulta, id_medicamento),
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
);


---Insert---    
INSERT INTO cliente(nome, telefone)
VALUES
('Ana de Lima', '1199999-99'),
('José Aparecido', '1198888-77'),
('Maria do Carmo', '11955555-44'),
('Carlos Alberto', '1197777-11'),
('Fernanda Lima', '1196666-22');

select * from cliente;

INSERT INTO pet(nome, especie, idade, id_cliente)
VALUES
('Rex', 'Cachorro',5, 3),
('Cleyton', 'gato',4, 1),
('THOR', 'cachorro', 6, 2),
('Luna', 'Gato', 2, 1),
('Bob', 'Cachorro', 4, 2);

select * from pet;


INSERT INTO veterinario(nome, crmv)
VALUES
('DRA. MARISA ISABEL','SP1234'),
('DR. BRUNO CARVALHO', 'SP1020'),
('Dra. TERESA CRISTINA', 'GO1234'),
('Dr. Paulo Henrique', 'SP2222'),
('Dra. Juliana Alves', 'SP3333');

select * from veterinario;

INSERT INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30','vacina',1, 1),
('2025-06-02','castracao',2, 2),
('2025-11-05','retorno',1, 1),
('2025-12-01', 'exame geral', 1, 1),
('2025-12-02', 'vacinação', 2, 2);


select * from consulta;

INSERT INTO medicamento(nome, quantidade,validade_medicamento, id_consulta)
VALUES
('vermit', 2, '2030-11-30',1),
('vermit02', 3, '2030-12-30',2),
('vermit03', 1, '2031-01-30',3),
('Antibiótico Z', 10, '2031-05-20', 1),
('Anti-inflamatório W', 5, '2032-07-15', 2);


select * from medicamento;


INSERT INTO medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1, '1 dose unica'),
(1, 2, 'Aplicar 2 gotas no ouvido'),
(3, 2, '1 comprimido'),
(1, 1, '2 comprimidos ao dia'),
(2, 2, '10 ml a cada 12h');

------select------

-- Listar clientes e seus pets
SELECT c.nome AS cliente, p.nome AS pet, p.especie
FROM cliente c
JOIN pet p ON c.id_cliente = p.id_cliente;

-- Listar consultas com veterinário
SELECT co.id_consulta, co.data, co.tipo_servico, v.nome AS veterinario
FROM consulta co
JOIN veterinario v ON co.id_veterinario = v.id_veterinario;

-- Listar medicamentos aplicados em cada consulta
SELECT mc.id_consulta, m.nome AS medicamento, mc.dose_aplicada
FROM medicamento_consulta mc
JOIN medicamento m ON mc.id_medicamento = m.id_medicamento;

-----updates------

-- Atualizar telefone de cliente
UPDATE cliente SET telefone = '1194444-33' WHERE id_cliente = 1;

-- Atualizar idade de pet
UPDATE pet SET idade = 6 WHERE nome = 'Rex';

-- Atualizar tipo de serviço da consulta
UPDATE consulta SET tipo_servico = 'retorno pós-cirurgia' WHERE id_consulta = 1;

----deletes----

-- Excluir medicamento vencido
DELETE FROM medicamento WHERE validade_medicamento < '2025-01-01';

-- Excluir consulta específica
DELETE FROM consulta WHERE id_consulta = 3;

-- Excluir cliente que não possui mais pets
DELETE FROM cliente WHERE id_cliente = 3;


 

 

 

 

