CREATE TABLE cliente (
   clave_cliente VARCHAR (13),
   nombre_cliente VARCHAR(255) NOT NULL,
   peterno_cliente VARCHAR(255),
   materno_cliente VARCHAR(255),
   telefono VARCHAR (13),
   correo VARCHAR(255),
   fecha_nac VARCHAR (255)
);
--drop TABLE Cliente;
ALTER TABLE cliente ADD CONSTRAINT pk_clave_cliente PRIMARY KEY(clave_cliente);

CREATE TABLE producto (
   clave_producto VARCHAR (11) ,
   nombre VARCHAR(255) NOT NULL,
   marca VARCHAR(255),
   cantidad INTEGER,
   costo VARCHAR (100)
);
ALTER TABLE producto ADD CONSTRAINT pk_clave_producto Primary KEY(clave_producto);

CREATE TABLE comprar (
    clave_cliente VARCHAR (13) ,
    clave_producto VARCHAR (11)
);

ALTER TABLE comprar ADD CONSTRAINT fk_clave_cliente FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);
ALTER TABLE comprar ADD CONSTRAINT fk_clave_producto FOREIGN KEY (clave_producto) REFERENCES producto(clave_producto);

CREATE TABLE clase(
   clave_clase VARCHAR (13),
   dia VARCHAR (255) ,
   hora VARCHAR (255)
);
ALTER TABLE clase ADD CONSTRAINT pk_clave_clase PRIMARY KEY(clave_clase);

CREATE TABLE llevar(
   clave_cliente VARCHAR (13),
   clave_clase VARCHAR (13)
);

ALTER TABLE llevar ADD CONSTRAINT fk_clave_cliente2 FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);
ALTER TABLE llevar ADD CONSTRAINT fk_clave_clase FOREIGN KEY (clave_clase) REFERENCES clase(clave_clase);

CREATE TABLE personal(
   clave_personal VARCHAR (13),
   clave_nombre VARCHAR (13),
   paterno VARCHAR(255) NOT NULL,
   materno VARCHAR(255) NOT NULL,
   nombre VARCHAR(255) NOT NULL,
   telefono VARCHAR (100),
   fec_nacimiento VARCHAR(255) NOT NULL
);

ALTER TABLE personal ADD CONSTRAINT pk_clave_personal PRIMARY KEY(clave_personal);


CREATE TABLE instructor_basico(
    clave_personal VARCHAR (13),
    edad VARCHAR (255),
    sueldo VARCHAR (100),
    dia VARCHAR (255),
    hora VARCHAR (255)
);
ALTER TABLE instructor_basico ADD CONSTRAINT fk_clave_personal_basico FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE instructor_particular(
  clave_personal VARCHAR (13),
  edad VARCHAR (255),
  sueldo VARCHAR (100),
  dia VARCHAR (255),
  hora VARCHAR (255)
);
ALTER TABLE instructor_particular ADD CONSTRAINT fk_clave_personal_particular FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE nutriologo(
  clave_personal VARCHAR (13),
  edad VARCHAR (255),
  sueldo VARCHAR (100),
  dia VARCHAR (255),
  hora VARCHAR (255)
);

ALTER TABLE nutriologo ADD CONSTRAINT fk_clave_personal_nutriologo FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE impartir_clase(
   clave_personal VARCHAR (13),
   clave_clase VARCHAR (13)
);

ALTER TABLE impartir_clase ADD CONSTRAINT fk_clave_clase FOREIGN KEY (clave_clase) REFERENCES clase(clave_clase);
ALTER TABLE impartir_clase ADD CONSTRAINT fk_clave_impartir_instructor FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE salon(
   clave_salon INTEGER,
   lugar VARCHAR(255),
   Rol VARCHAR(255)
);

ALTER TABLE salon ADD CONSTRAINT pk_clave_salon PRIMARY KEY(clave_salon);

CREATE TABLE estar(
   clave_salon INTEGER,
   clave_clase VARCHAR(13)
);

ALTER TABLE estar ADD CONSTRAINT fk_clave_salon FOREIGN KEY (clave_salon) REFERENCES salon(clave_salon);
ALTER TABLE estar ADD CONSTRAINT fk_clave_clase_estar FOREIGN KEY (clave_clase) REFERENCES clase(clave_clase);

CREATE TABLE socio(
   clave_cliente VARCHAR(13),
   edad VARCHAR(255),
   correo VARCHAR(255),
   puntos FLOAT
);

ALTER TABLE socio ADD CONSTRAINT fk_clave_cliente_socio FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);

CREATE TABLE membresia(
   clave_membresia VARCHAR(13),
   basico VARCHAR(255),
   plus VARCHAR(255),
   premium VARCHAR(255)
);

ALTER TABLE membresia ADD CONSTRAINT pk_clave_membresia PRIMARY KEY(clave_membresia);

CREATE TABLE tipo_membresia(
   clave_tipo INTEGER,
   clave_membresia VARCHAR(13),
   precio_basico INTEGER,
   precio_plus INTEGER,
   precio_premium INTEGER
);

ALTER TABLE tipo_membresia ADD CONSTRAINT pk_clave_tipo PRIMARY KEY(clave_tipo);
ALTER TABLE tipo_membresia ADD CONSTRAINT fk_clave_membresia FOREIGN KEY (clave_membresia) REFERENCES membresia(clave_membresia);

CREATE TABLE tener_membresia(
   clave_membresia VARCHAR(13),
   clave_cliente VARCHAR(13)
);

ALTER TABLE tener_membresia ADD CONSTRAINT fk_clave_tener_membresia FOREIGN KEY (clave_membresia) REFERENCES membresia(clave_membresia);
ALTER TABLE tener_membresia ADD CONSTRAINT fk_clave_cliente_membresia FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);
