Sistema de Gestão de Clínica Veterinária

Este projeto faz parte da **Experiência Prática 3 e 4** da disciplina de Banco de Dados.  
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

---

## 🚀 Como Executar

1. Instale o [SQLiteStudio](https://sqlitestudio.pl).  
2. Crie um novo banco de dados.  
3. Copie e cole o conteúdo do arquivo `script.sql` no editor SQL.  
4. Execute o script para criar as tabelas e inserir os dados.  
5. Utilize os comandos `SELECT`, `UPDATE` e `DELETE` para manipular os dados conforme os exemplos abaixo.

---

## Estrutura dos Scripts

### 1. Criação das Tabelas (DDL)
```sql
CREATE TABLE cliente (...);
CREATE TABLE pet (...);
CREATE TABLE veterinario (...);
CREATE TABLE consulta (...);
CREATE TABLE medicamento (...);
CREATE TABLE medicamento_consulta (...);

