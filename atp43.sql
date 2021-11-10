/*Liste todos os dados de todas as colunas da tabela Categoria. */
select * from categoria;

/* Liste todos os dados de todas as colunas da tabela Produto. */
select * from produto;

/* Liste os dados de todas as colunas da tabela Categoria, para as linhas que possuam uma descrição preenchida. */
select * from categoria where descricao is not null;

/* Liste os dados das colunas Id, nome e preço da tabela Produto, para as linhas que possuem um nome iniciando com C. */
select id, nome, preco from produto
where nome like 'C%';

/* Liste os dados das colunas Id, nome e preço da tabela Produto e os dados 
 * id, nome e descrição da tabela Categoria para as linhas que possuem um preço maior que 0. */
select p.id, p.nome, p.preco, c.id as id_categoria , c.nome as categoria , c.descricao from produto p 
inner join categoria c on p.id_categoria = c.id 
where p.preco > 0;

/* Liste os dados de todas as colunas da tabela Produto que possuem categoria com Id maior que 2. */
select * from produto p
inner join categoria c on p.id_categoria = c.id 
where c.id > 2;

/*  Liste os dados de todas as colunas da tabela Categoria e o os dados da coluna nome da tabela Produto,
 *  para as categorias que estão sendo utilizadas por produtos. */
select c.*, p.nome from categoria c
inner join produto p on p.id_categoria = c.id;
