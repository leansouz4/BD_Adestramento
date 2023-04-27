
/* Um empresário tem uma pequena empresa de adestradores, 
e precisa de um banco de dados para ter uma organização melhor,
 a respeito do registro de animais e dos serviços prestados
 pelos seus funcionários aos seus clientes.*/


create database bd_adestrador;

use bd_adestrador;

create table tb_funcionario
(cd_funcionario int not null primary key,
nome char(50),
telefone char (14),
email char(50),
Endereço char(100));

select * from tb_funcionario;


create table tb_cliente
(cpf int not null primary key,
nome char(50),
telefone char (14),
email char(50),
endereco char(100));

Insert into tb_cliente
(cpf, nome, telefone, email, endereco)
values (158745, 'Pedro.',559922,'Pedrito@orkut.com','Rua Times Square 01'),
(225464, 'Soares.', 3321-8181 ,'Soaress@gmail.com', 'Rua Bc Raff 6'), 
(357894, 'Kássio', 61190 ,'Kassioalface@gmail.com', 'Rua Tunks 113'), 
(429631, 'Felipe Melo.', 613301-2001,'Felipensi@gmail.com', 'Rua Aka Rasta 17'),
(547415, 'Justin', 61212-3030,'Justinmemo@hotmail.com', 'Rua Cjota 11'),
(633250, 'Lukas',619625-5487,'Lukassantchohansen@gmail.com', 'Rua Pedroza 16'),
(787791,'Sabrina', 6548-15446,'Sabrinarutherford@gmail.com', 'Rua Chaves 20');

select * from tb_cliente;

create table tb_animal
(cd_animal int not null primary key,
nome char(20),
dono char(50),
raca char(16),
porte char (20));


Insert into tb_animal
(cd_animal, nome, dono, raca, porte)
values (1, 'Kiba','Lukas','Caramelo','Médio'),
(2, 'Toddy', 'Sabrina' ,'Golden retrivier', 'Grande'), 
(3, 'Totó', 'Matheo' ,'Fila brasileiro', 'Grande'), 
(4, 'Brutus', 'Kássio','Husky siberiano', 'Médio'),
(5, 'Dark', 'Justin','Shih Tzu', 'Pequeno'),
(6, 'Bilú','Soares','Pug', 'Pequeno'),
(7,'Rex', 'Pedro','Buldogue francês', 'Pequeno');

select * from tb_animal;

create table tb_valorServico
(cd_valorServico int not null primary key,
valor char(16),
porte char(16));


Insert into tb_valorServico
(cd_valorServico, valor, porte)
values(1, 'R$ 30','Pequeno'),
(2, 'R$ 50','Médio'),
(3, 'R$ 80','Grande');

select * from tb_valorServico;


/*Comandos DML e DQL apenas em 1 Entidade – Insert / update /  Delete / Select

1. Inserir na tabela funcionário, todos os dados necessários, atraves da utilização do comando DML Insert*/

Insert into tb_funcionario 
(cd_funcionario, nome, telefone, Endereço)	
values (1, 'Fernando A.',559922, 'Rua Almeida 22'),
(2, 'Gabriel H.', 3321-8181 , 'Rua Tereza 04'), 
(3, 'Lázaro M.', 61190 , 'Rua Pilates 11'), 
(4, 'Chris R.', 613301-2001, 'Rua Valadares 30'),
(5, 'Houston B.', 61212-3030, 'Rua Vasconcelos 01'),
(6, 'Leandro S.',619625-5487, 'Rua do Bill 06'),
(7,'Maria', 6548-15446, 'Rua Florinda 70');


/*2. Atualizar nome da funcionária 'Maria' para 'Isabela', utilizando o comando Insert(DML). */
update tb_funcionario
set cd_funcionario = 7, nome = 'Isabela'
 where cd_funcionario = 7;
 
 select * from tb_funcionario;
 
 /*3. Deletar da tabela , o funcionário que se encontra com o código '7', utilizando o comando Delete(DML)  */
 delete from tb_funcionario
where cd_funcionario = 7;


 /*4. Selecionar na tabela funcionário, todos os funcionários que começem com a letra 'L', utilizando o comando Select(DQL) */
select * from tb_funcionario
where nome like 'L%';



 
 /* Criar uma tabela para depois apagar, usando o comando "Drop"(DDL).*/
 
 create table tb_salario
(id_salario int not null primary key,
salario char(50));

select * from tb_salario;




 /*Excluir tabela salário com o comando drop(DDL)*/
drop table tb_salario;


/* usar o comando "Alter"(DDL), para corrigir o nome 'Endereço' para 'endereco'.*/
  
  alter table tb_funcionario
  change column Endereço endereco char(100);
  
select * from tb_funcionario;
  
  


/*
use  bd_pedido_sexta;

create table tb_cliente 
(cd_cliente int not null primary key, cliente char(50));

create table tb_vendedor
(cd_vendedor int not null primary key, vendedor char(50));

create table tb_veiculo
(cd_veiculo int not null primary key, veiculo char (50));


alter table tb_veiculo 
add valor_veiculo decimal(12,2);


create table tb_pedido
(nr_pedido int not null primary key, 
dt_pedido date,
cd_veiculo int,
cd_cliente int,
cd_vendedor int,
valor_pedido decimal(12,2),
comissao decimal (12,2));

drop table tb_pedido;

alter table tb_pedido
add constraint fk_cliente1 foreign key  (cd_cliente)
references tb_cliente (cd_cliente);

alter table tb_pedido
add constraint fk_vendedor1 foreign key (cd_vendedor)
references tb_vendedor (cd_vendedor);

alter table tb_pedido
add constraint fk_veiculo1 foreign key (cd_veiculo)
references tb_veiculo (cd_veiculo);


Insert into tb_vendedor
(cd_vendedor , vendedor)
values (1, 'Aníbal'),
(2, 'Antonio de Moraes'), 
(3, 'Barbara Alcantara'), 
(4, 'Deise Castro'),
(5, 'Eider Nascimento');

select * from tb_cliente;

Insert into tb_cliente
(cd_cliente, cliente) 
Values 
(1, 'Vallu Nascimento'),
(2, 'Rogeria Negreti'),
(3, 'Henrique Silva'),
(4, 'Wellington Alves'),
(5, 'Jose Pereira');


Insert into tb_veiculo
(cd_veiculo, veiculo, valor_veiculo) 
Values
(1, 'Onix', 52000),
(2, 'Prisma', 49000),
(3, 'S10', 109000),
(4, 'Cruze', 101000),
(5, 'Spin', 69000),
(6, 'Cobalt', 63000);

select * from tb_veiculo;


insert into tb_pedido
(nr_pedido, dt_pedido, cd_veiculo, cd_cliente, cd_vendedor, valor_pedido,comissao)
values
(1,'2019-01-10',1,2,3,52000,0),
(2,'2019-02-20',2,3,4,49000,0),
(3,'2019-03-30',3,4,5,109000,0),
(4,'2019-04-10',4,5,1,101000,0),
(5,'2019-05-20',5,5,1,69000,0),
(6,'2019-06-30',6,1,2,63000,0),
(7,'2019-07-10',1,4,5,52000,0),
(8,'2019-08-20',1,4,5,52000,0),
(9,'2019-09-30',1,4,5,52000,0),
(10,'2019-10-10',1,4,5,52000,0);

select * from tb_pedido;



									/*EXERCÍCIOS*/
                                    
/* 1 Incluir cliente Pedro Nóbrega*/
insert into tb_cliente
(cd_cliente, cliente)
values(6, 'Pedro Nóbrega');

select * from tb_cliente;

/*2 Incluir vendedor Hugo Silva*/

insert into tb_vendedor
(cd_vendedor, vendedor)
values (6, 'Hugo Silva');

select * from tb_pedido;


/*3 Incluir pedido  - Data= 06-04-2020,  cliente = Pedro Nóbrega, Vendedor = Hugo Silva,  veiculo S10 valor R$109.000,00*/
insert into tb_pedido
(nr_pedido, dt_pedido, cd_veiculo, cd_cliente, cd_vendedor,  valor_pedido, comissao)
values ( 11, 2020-06-04 , 3, 6,2,10900,0);


/*4 Alterar cliente Vallu Nascimento para Carlos Nascimento na tabela pedido*/



/*5 Alterar vendedor Anibal para Anibal Santoro*/




/*6 Alterar o valor do Pedido 1 parar cd_veiculo 4 e valor R$101.000,00*/
select * from tb_pedido
where nr_pedido = 1;
update tb_pedido
set cd_veiculo = 4, valor_pedido = 101000
where nr_pedido = 1;



/*7 Excluir Cliente quando o cd_cliente = 1  (vê se é possível ? Explique ? )*/
delete from tb_cliente
where cd_cliente = 1;



/*8 Atualizar o valor da comissão em 10% do valor da venda*/
update tb_pedido
set comissao = valor_pedido * 0.1;



/*9 lista os nr_pedidos, dt_pedido, Cliente, veiculo, valor, comissao*/




/*10 Alterar o valor do pedido, aumentando em 20%*/




/*11 Alterar a comissão do pedido em 5% do valor da venda*/



















