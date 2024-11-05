show tables;
select * from brinquedo;
select * from cargo;
select * from funcionario;
select * from marca;
select * from tipo_brinquedo;

alter table funcionario
add column id_cargo int;

alter table funcionario
add constraint id_cargo
foreign key (id_cargo)
references cargo(id_cargo);

alter table briquedo
add column id_marca int;

alter table brinquedo
add column id_tipo_brinquedo int;

alter table brinquedo
add constraint id_marca
foreign key (id_marca)
references marca(id_marca);