CREATE TABLE Cliente(
cd_cliente number(4),
nm_cliente varchar2(50),
cd_municipio number(5),
sg_estado char(2),
nr_cep varchar2(8),
nr_ddd number(3),
nr_fone number(7),
ie_sexo char(1),
CONSTRAINT cliente_cd_cliente_pk primary key (cd_cliente)
)