CREATE TABLE empleado (
  curp VARCHAR(255),
  paterno VARCHAR(255) default NULL,
  materno VARCHAR(255) default NULL,
  nombre VARCHAR(255) default NULL,
  f_nac VARCHAR(255),
  calle VARCHAR(255) default NULL,
  numero INTEGER,
  ciudad VARCHAR(255),
  cp VARCHAR(255)
);

ALTER TABLE empleado ADD CONSTRAINT pk_curp PRIMARY KEY(curp);

CREATE TABLE empresa (
  rfc VARCHAR(11) DEFAULT NULL,
  razon_social VARCHAR(255),
  calle VARCHAR(255) DEFAULT NULL,
  numero INTEGER,
  ciudad VARCHAR(255),
  cp VARCHAR(10) DEFAULT NULL
);

ALTER TABLE empresa ADD CONSTRAINT pk_rfc PRIMARY KEY(rfc);

CREATE TABLE trabajar (
  curp VARCHAR(255),
  rfc VARCHAR(11) DEFAULT NULL,
  f_ingreso VARCHAR(255),
  salario VARCHAR(255)
);

ALTER TABLE trabajar ADD CONSTRAINT fk_curp FOREIGN KEY (curp) REFERENCES empleado(curp);
ALTER TABLE trabajar ADD CONSTRAINT fk_rfc FOREIGN KEY (rfc) REFERENCES empresa(rfc);

CREATE TABLE proyecto (
  num_prov INTEGER,
  nombre VARCHAR(255),
  f_inicio VARCHAR(255),
  f_fin VARCHAR(255)
);

ALTER TABLE proyecto ADD CONSTRAINT pk_proyecto PRIMARY KEY(num_prov);

CREATE TABLE controlar (
  rfc VARCHAR(11) DEFAULT NULL,
  num_prov INTEGER
);

ALTER TABLE controlar ADD CONSTRAINT fk_rfc2 FOREIGN KEY (rfc) REFERENCES empresa(rfc);
ALTER TABLE controlar ADD CONSTRAINT fk_num_prov2 FOREIGN KEY (num_prov) REFERENCES proyecto(num_prov);

CREATE TABLE controlar (
  rfc VARCHAR(11) DEFAULT NULL,
  num_prov INTEGER
);

ALTER TABLE controlar ADD CONSTRAINT fk_rfc2 FOREIGN KEY (rfc) REFERENCES empresa(rfc);
ALTER TABLE controlar ADD CONSTRAINT fk_num_prov2 FOREIGN KEY (num_prov) REFERENCES proyecto(num_prov);

CREATE TABLE colaborar(
 curp VARCHAR(255),
 rfc VARCHAR(11) DEFAULT NULL,
 num_horas INTEGER,
 f_fin VARCHAR(255)
);

ALTER TABLE colaborar ADD CONSTRAINT fk_curp2 FOREIGN KEY (curp) REFERENCES empleado(curp);
ALTER TABLE colaborar ADD CONSTRAINT fk_rfc3 FOREIGN KEY (rfc) REFERENCES empresa(rfc);

CREATE TABLE supervisar(
 curp VARCHAR(255)
);

ALTER TABLE supervisar ADD CONSTRAINT fk_curp3 FOREIGN KEY (curp) REFERENCES empleado(curp);
