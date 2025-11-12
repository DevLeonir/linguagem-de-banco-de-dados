    CREATE TABLE Estado(
    Sg_Estado char(2) PRIMARY KEY,
    Nm_Estado varchar2(35),
    CONSTRAINT Estado_nm_Estado_UN UNIQUE (nm_Estado)
    )