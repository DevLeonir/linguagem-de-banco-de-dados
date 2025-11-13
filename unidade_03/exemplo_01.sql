CREATE TABLE pais(
cd_pais number(2),
nm_pais char(45),
ds_nacionalidade char(35),
dt_inclusao date,
constraint pais_cd_pais_pk primary key (cd_pais),
constraint pais_nm_pais_uk unique (nm_pais)
);

INSERT INTO pais (cd_pais, nm_pais) VALUES (1, 'Brasil');

INSERT INTO pais (cd_pais, nm_pais, ds_nacionalidade, dt_inclusao)
VALUES (2, 'Argentina', null, to_date('10/11/2025', 'dd/mm/yyyy'));

INSERT INTO pais VALUES (4, 'Chile', 'Chilena', sysdate);

INSERT INTO pais (nm_pais, dt_inclusao, ds_nacionalidade, cd_pais)
VALUES ('EUA', to_date('10/11/2025', 'dd/mm/yyyy'), 'Americana', 3);

UPDATE pais SET nm_pais = 'Portugal', ds_nacionalidade = 'Portuguesa' WHERE cd_pais = 3;

DELETE FROM pais WHERE cd_pais = 3;