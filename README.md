Sistema de Gestão de Clínica Veterinária

Este projeto faz parte da **Experiência Prática** da disciplina Modelagem de Banco de Dados.  
O objetivo é modelar, criar e manipular dados em um **banco de dados relacional** utilizando **SQLite** e comandos SQL (DDL e DML).

---

Estrutura do Projeto

O banco de dados foi construído a partir do **DER (Diagrama Entidade-Relacionamento)** e normalizado até a **3FN (Terceira Forma Normal)**.  
As tabelas criadas foram:

- **cliente** → armazena informações dos clientes da clínica.  
- **pet** → armazena informações dos animais de estimação.  
- **veterinario** → armazena informações dos veterinários.  
- **consulta** → registra as consultas realizadas.  
- **medicamento** → armazena os medicamentos disponíveis e utilizados.  
- **medicamento_consulta** → tabela associativa entre medicamentos e consultas.

---

Tecnologias Utilizadas

- **SQLiteStudio** (para criação e execução dos scripts)  
- **SQL (DDL e DML)**  
- **GitHub** (versionamento e compartilhamento do código)
- **Visual Studio** (ambiente de desenvolvimento e integração com projetos)


---

## Como Executar

1. Instale o [SQLiteStudio](https://sqlitestudio.pl).  
2. Crie um novo banco de dados.  
3. Copie e cole o conteúdo do arquivo `script.sql` no editor SQL.  
4. Execute o script para criar as tabelas e inserir os dados.  
5. Utilize os comandos `SELECT`, `UPDATE` e `DELETE` para manipular os dados conforme os exemplos abaixo.

---

## Estrutura dos Scripts

### 1. Criação das Tabelas (DDL)

CREATE TABLE cliente (...);
CREATE TABLE pet (...);
CREATE TABLE veterinario (...);
CREATE TABLE consulta (...);
CREATE TABLE medicamento (...);
CREATE TABLE medicamento_consulta (...);

Inserção de Dados (INSERT)
INSERT INTO cliente (nome, telefone) VALUES ('Ana de Lima', '11-9999999');
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Rex', 'Cachorro', '5', '3');


Consultas (SELECT)
-- Listar clientes e seus pets
SELECT c.nome AS cliente, p.nome AS pet, p.especie
FROM cliente c
JOIN pet p ON c.id_cliente = p.id_cliente;


Atualizações (UPDATE)
UPDATE cliente SET telefone = '11-9444433' WHERE id_cliente = 1;


Exclusões (DELETE)
DELETE FROM medicamento WHERE validade_medicamento < '2025-01-01';



     Exemplos de Consultas
     
- Listar todos os clientes e seus pets.
- Listar consultas com respectivos veterinários.
- Listar medicamentos aplicados em cada consulta.

     Entregáveis
- Arquivo script.sql com:
- Criação das tabelas (DDL)
- Inserção de dados (INSERT)
- Consultas (SELECT)
- Atualizações (UPDATE)
- Exclusões (DELETE)
- Este README.md explicando como executar o projeto.

     Autor
Projeto desenvolvido por Marcos Vinicio Territo - RGM: 46604090
Disciplina: Modelagem de Banco de Dados – Experiência Prática
