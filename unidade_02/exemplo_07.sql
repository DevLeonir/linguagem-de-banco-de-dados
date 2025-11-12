    CREATE TABLE Cliente(
    cd_cliente number(4),
    nm_cliente varchar2(50),
    ds_endereco number(5),
    sg_estado char(2),
    nr_cep varchar2(8),
    nr_ddd number(3),
    nr_fone number(7),
    ie_sexo char(1),
    constraint cliente_cd_cliente_pk primary key (cd_cliente)
    );
    
    CREATE TABLE Historico(
    cd_cliente number(4),
    dt_compra date,
    vl_compra number(12,2),
    constraint historico_pk primary key (cd_cliente, dt_compra)
    );
    
    CREATE TABLE Estado(
    sg_estado char(2),
    nm_estado varchar2(35),
    constraint estado_sg_estado_pk primary key (sg_estado),
    constraint estado_nm_estado_un unique (nm_estado)
    );
    
    DROP TABLE CLIENTE;
    
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
    dt_cadastro date default sysdate,
    constraint cliente_cd_cliente_pk primary key (cd_cliente),
    constraint cliente_sg_estado_fk foreign key (sg_estado)
    references estado(sg_estado)
    );
    
    DROP TABLE CLIENTE;
    
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
    dt_cadastro date default sysdate,
    constraint cliente_cd_cliente_pk primary key (cd_cliente),
    constraint cliente_sg_estado_fk foreign key (sg_estado) references estado(sg_estado),
    constraint cliente_ie_sexo_ck check (ie_sexo in ('F','M'))
    );
    
    DROP TABLE CLIENTE;
    
    CREATE TABLE Cliente(
    cd_cliente number(4),
    nm_cliente varchar2(50) not null,
    ds_endereco varchar2(70) not null,
    cd_municipio number(5),
    sg_estado char(2),
    nr_cep varchar2(8),
    nr_ddd number(3),
    nr_fone number(7),
    ie_sexo char(1),
    dt_cadastro date default sysdate,
    constraint cliente_cd_cliente_pk primary key (cd_cliente),
    constraint cliente_sg_estado_fk foreign key (sg_estado)references estado(sg_estado),
    constraint cliente_ie_sexo_ck check(ie_sexo in ('F', 'M'))
    );
    
    ALTER TABLE CLIENTE
    ADD (IE_FISICA_JURIDICA CHAR(1));

    ALTER TABLE CLIENTE
    MODIFY (nm_cliente null);

    ALTER TABLE CLIENTE
    MODIFY (nm_cliente not null);

    ALTER TABLE CLIENTE
    MODIFY (DS_ENDERECO NUMBER(3));

    ALTER TABLE CLIENTE
    ADD(CONSTRAINT CLIENTE_IE_FISICA_JURIDICA_CK
    CHECK(IE_FISICA_JURIDICA IN ('F', 'J')));

    ALTER TABLE CLIENTE
    DISABLE CONSTRAINT CLIENTE_IE_FISICA_JURIDICA_CK;

    ALTER TABLE CLIENTE
    DROP CONSTRAINT CLIENTE_IE_FISICA_JURIDICA_CK;

    DROP TABLE CLIENTE;
    