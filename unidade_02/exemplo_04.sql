CREATE TABLE Cliente(
cd_cliente number(4),
nm_cliente varchar2(50),
ds_endereco varchar2(70),
cd_municipio number(5),
sg_estado char(2),
nr_cep varchar2(8),
nr_ddd number(3),
nr_fone number(7),
ie_sexo char(1),
CONSTRAINT cliente_cd_cliente_pk PRIMARY KEY (cd_cliente),
CONSTRAINT cliente_sg_estado_fk FOREIGN KEY (sg_estado)
REFERENCES Estado(sg_estado)
);