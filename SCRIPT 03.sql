/* Ajuste questões de segurança, incluindo usuários, papéis e permissões. */

create user 'gerente'@'localhost' identified by 'senha';
create role acesso_total;
grant all privileges on *.* to acesso_total;
grant acesso_total to 'gerente'@'localhost';

create user 'agente'@'localhost' identified by 'senha';
create role acesso_agente;
grant select, insert, update, delete on agencia.hospede to acesso_total;
grant select, insert, update, delete on agencia.pagamento to acesso_total;
grant select, insert, update, delete on agencia.quarto to acesso_total;
grant select, insert, update, delete on agencia.tipo_quarto to acesso_total;
grant acesso_agente to 'agente'@'localhost';

/* Crie visões no banco de dados para consultas mais frequentes */
/* buscar reservas por ordem de checkout */
create view ordem_checkout as select h.nome, q.numero, tq.categoria, q.checkout from hospede as h inner join quarto as q on h.id = q.hospede_id inner join
tipo_quarto as tq on tq.quarto_id = tq.id order by q.checkout desc;

/* buscar hóspedes e contato de reservas ainda não pagas */
create view reservas_naopagas as select h.nome, p.status, h.telefone, h.cpf, q.numero from hospede as h inner join quarto as q on h.id = q.hospede_id 
inner join pagamento as p on p.id = h.pagamento_id where p.status = 'nao pago';


/* Crie ao menos uma stored function, um stored procedure ou um trigger para o banco de dados, 
selecionando uma funcionalidade que seja adequada para tanto. */
/* buscando informacoes de hóspedes por id */

DELIMITER //
create procedure hosp_porid (hosp_id int)
begin
select h.nome, q.numero, q.checkin, q.checkout from hospede as h inner join quarto as q on q.id = h.pagamento_id
where h.id = hosp_id;
end//
DELIMITER ;
call hosp_porid();

/* Crie ao menos um índice composto para uma das tabelas. */

CREATE INDEX idx_id ON quarto(id, numero);
select * from quarto;
explain select * from quarto;


