/* Insira 3 categorias na tabela categoria. */
insert into categoria (nome, descricao) values
('Eletrodomesticos', 'Utilizam energia el�trica.'),
('M�veis', 'Artigos de madeira'),
('Infantil', 'Artigos para crian�as');

/* Insira 6 produtos na tabela produto. */
insert into produto (nome, descricao, preco, id_categoria) values
('TV Led 50"', 'Smart TV Sony', 5900, 4),
('Caixa de som', 'JBL', 1699, 4),
('Guarda roupas 6 portas', 'Madeira maci�a', 4599, 5),
('Mesa de jantar', '6 lugares', 2354, 5),
('Cama elastica', '', 1678, 6),
('Bicicleta aro 12', 'Pl�stico com rodinhas', 278, 6);

/* Altere a descri��o de dois produtos. */
update produto
	set descricao = '4 lugares, com tampo de vidro'
	where id=10;

/* Delete um produto e uma categoria. */
delete from produto where id_categoria = 6;
delete from categoria where id = 6;

/* Altere uma categoria de um produto. */
update categoria 
	set nome = 'Eletroeletronicos'
	where id = 4;

update produto 
	set preco = 3500
where id = 10;

/* Altere o pre�o de todos os produtos tirando R$1,00 do pre�o atual. */
update  produto 
	set preco = preco - 1;