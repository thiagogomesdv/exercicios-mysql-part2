alter table hospede add nome varchar(45);
alter table hospede add cpf varchar(20);
insert into pagamento (id, status)
values
('1', 'pago'),
('2', 'nao pago');

insert into hospede (id, nome, cpf,  telefone, endereco, pagamento_id)
values
('1', 'Ana Claudia Barros', '20392039401', '77923849201', 'Rua das Americas 10', '1'),
('2', 'Joao Paulo Azevedo', '23950293021', '81938472617', 'Rua das Ostras 81', '2'),
('3', 'Thiago Azevedo', '19284029301', '119283748392', 'Avenida Pontal 65', '2'),
('4', 'Zilany de Assis', '82930183910', '219827364782', 'Alameda Santos 21', '1'),
('5', 'Denise Carmo da Rocha', '98765372819', '55982738492', 'Rua das Palmeiras 31', '1'),
('6', 'Ziraldo da Costa Ramos', '98729102839', '319827384928', 'Avenida Pacheco 33', '2'),
('7', 'Maria Claudia Oseas', '17283920182', '319283948291', 'Avenida Lua 31', '1'),
('8', 'Daniel Dantas', '67829384728', '859827381938', 'Avenida Beira Mar 35', '2');

insert into quarto(id, numero, checkin, checkout, hospede_id)
values
('1', '301', '2022-01-30', '2023-09-15', '1'),
('2', '404', '2020-02-17', '2023-07-15', '2'),
('3', '809', '2021-10-08', '2023-10-31', '3'),
('4', '703', '2022-02-22', '2023-08-13', '4'),
('5', '801', '2022-11-02', '2024-01-28', '8'),
('6', '606', '2022-04-27', '2023-07-15', '7'),
('7', '714', '2022-12-23', '2023-08-03', '6'),
('8', '807', '2023-08-17', '2024-02-01', '5');

insert into tipo_quarto(id, valor, categoria, quarto_id)
values
('1', '300', 'standard', '1'),
('2', '350', 'luxo', '2'),
('3', '400', 'executivo', '3'),
('4', '450', 'super luxo', '4'),
('5', '300', 'standard', '1'),
('6', '300', 'standard', '4'),
('7', '350', 'luxo', '3'),
('8', '300', 'standard', '2');




