/* Crie uma tabela de Produto com as seguintes colunas: id(identidade e incremental), nome, descrição, codigo e preço. 
 * Todas devem ser de preenchimento obrigatório. */
create table produto (
	id int generated always as identity,
	nome varchar(200) not null,
	descricao varchar(200) not null,
	codigo varchar(50) not null,
	preco float,
	primary key (id)
);

/* Crie uma tabela de Categoria com as seguintes colunas: id(identidade e incremental), nome, descrição. 
 * Apenas a coluna descrição deve permitir valores nulos.*/
create table categoria (
	id int generated always as identity,
	nome varchar(200) not null,
	descricao varchar(200),
	primary key (id)
);

/* Crie uma tabela de Carro com as seguintes colunas: id(identidade e incremental), modelo e marca. 
 * Todas devem ser de preenchimento obrigatório.*/
create table carro (
	id int generated always as identity,
	modelo varchar(50) not null,
	marca varchar(50) not null,
	primary key (id)
);

/* Adicione duas novas colunas em carro. As colunas devem ser: chassi e ano. 
 * As duas colunas devem ser de preenchimento obrigatório. */
alter table carro
	add chassi varchar(20) not null,
	add ano int not null;

/* Remove a coluna códido, da tabela Produto. */
alter table produto 
drop column codigo;

/* Delete a tabela Carro. */
drop table carro;

/* Adicione uma nova coluna na tabela Produto. A coluna deve ser o id da categoria e não deve permitir nulos. */
alter table produto
	add id_categoria int not null;

/* Adicione uma constraint a coluna id de categoria da tabela Produto. A constraint deve ser uma Foreign Key para a coluna Id, da tabela Categoria. */
alter table produto
add constraint fk_categoria foreign key (id_categoria) references categoria(id);
