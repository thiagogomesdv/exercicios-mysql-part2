create database agencia;
create table hospede (
id int primary key auto_increment,
telefone varchar(20),
endereco varchar(20),
pagamento_id int
);
create table pagamento (
id int primary key auto_increment,
status varchar(20)
);
create table quarto (
id int primary key auto_increment,
numero int,
checkin date,
checkout date,
hospede_id int
);
create table tipo_quarto (
id int primary key auto_increment,
valor decimal,
categoria varchar(20),
quarto_id int
);
alter table hospede add foreign key (pagamento_id) references pagamento (id);
alter table quarto add foreign key (hospede_id) references hospede (id);
alter table tipo_quarto add foreign key (quarto_id) references quarto (id);



