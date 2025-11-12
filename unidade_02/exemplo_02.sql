CREATE TABLE Historico(
cd_cliente number(4),
dt_compra date,
vl_compra number(12,2),
CONSTRAINT Historico_PK PRIMARY KEY (cd_cliente, dt_compra)
)