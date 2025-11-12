CREATE TABLE Cliente(
cd_cliente number(4),
nm_cliente varchar2(50),
cd_municipio number(5),
sg_estado char(2),
nr_cep varchar(8),
nr_ddd number(3),
nr_fone number(7),
ie_sexo char(1),
constraint cliente_cd_cliente_pk primary key (cd_cliente),
constraint cliente_sg_estado_fk foreign key (sg_estado)
references Estado(sg_estado),
constraint cliente_ie_sexo_ck check(ie_sexo in ('F', 'M'))
);