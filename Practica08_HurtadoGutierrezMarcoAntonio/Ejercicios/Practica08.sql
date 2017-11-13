CREATE TABLE cliente (
   clave_cliente INTEGER,
   nombre_cliente VARCHAR(25) NOT NULL,
   peterno_cliente VARCHAR(25),
   materno_cliente VARCHAR(25),
   telefono INTEGER NOT NULL,
   correo VARCHAR(25),
   fecha_nac DATE
);
--drop TABLE Cliente;
ALTER TABLE cliente ADD CONSTRAINT pk_clave_cliente PRIMARY KEY(clave_cliente);

CREATE TABLE producto (
   clave_producto INTEGER ,
   nombre VARCHAR(25) NOT NULL,
   marca VARCHAR(10),
   cantidad FLOAT,
   costo FLOAT
);
ALTER TABLE producto ADD CONSTRAINT pk_clave_producto Primary KEY(clave_producto);

CREATE TABLE comprar (
    clave_cliente INTEGER ,
    clave_producto INTEGER
);

ALTER TABLE comprar ADD CONSTRAINT fk_clave_cliente FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);
ALTER TABLE comprar ADD CONSTRAINT fk_clave_producto FOREIGN KEY (clave_producto) REFERENCES producto(clave_producto);

CREATE TABLE clase(
   clave_clase INTEGER,
   dia INTEGER ,
   hora INTEGER
);
ALTER TABLE clase ADD CONSTRAINT pk_clave_clase PRIMARY KEY(clave_clase);

CREATE TABLE llevar(
   clave_cliente INTEGER,
   clave_clase INTEGER
);

ALTER TABLE llevar ADD CONSTRAINT fk_clave_cliente2 FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);
ALTER TABLE llevar ADD CONSTRAINT fk_clave_clase FOREIGN KEY (clave_clase) REFERENCES clase(clave_clase);

CREATE TABLE personal(
   clave_personal INTEGER,
   clave_nombre INTEGER,
   paterno VARCHAR(25) NOT NULL,
   materno VARCHAR(25) NOT NULL,
   nombre VARCHAR(25) NOT NULL,
   telefono INTEGER,
   fec_nacimiento VARCHAR(25) NOT NULL
);

ALTER TABLE personal ADD CONSTRAINT pk_clave_personal PRIMARY KEY(clave_personal);


CREATE TABLE instructor_basico(
    clave_personal INTEGER,
    edad INTEGER,
    sueldo INTEGER,
    dia INTEGER,
    hora TIMESTAMP
);
ALTER TABLE instructor_basico ADD CONSTRAINT fk_clave_personal_basico FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE instructor_particular(
   clave_personal INTEGER,
   edad INTEGER,
   sueldo INTEGER,
   dia INTEGER,
   hora  TIMESTAMP
);
ALTER TABLE instructor_particular ADD CONSTRAINT fk_clave_personal_particular FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE nutriologo(
   clave_personal INTEGER,
   dia INTEGER,
   hora_nutriologo TIMESTAMP,
   sueldo_nutriologo INTEGER
);

ALTER TABLE nutriologo ADD CONSTRAINT fk_clave_personal_nutriologo FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE impartir_clase(
   clave_personal INTEGER,
   clave_clase INTEGER
);

ALTER TABLE impartir_clase ADD CONSTRAINT fk_clave_clase FOREIGN KEY (clave_clase) REFERENCES clase(clave_clase);
ALTER TABLE impartir_clase ADD CONSTRAINT fk_clave_impartir_instructor FOREIGN KEY (clave_personal) REFERENCES personal(clave_personal);

CREATE TABLE salon(
   clave_salon INTEGER,
   lugar VARCHAR(25),
   Rol VARCHAR(25)
);

ALTER TABLE salon ADD CONSTRAINT pk_clave_salon PRIMARY KEY(clave_salon);

CREATE TABLE estar(
   clave_salon INTEGER,
   clave_clase INTEGER
);

ALTER TABLE estar ADD CONSTRAINT fk_clave_salon FOREIGN KEY (clave_salon) REFERENCES salon(clave_salon);
ALTER TABLE estar ADD CONSTRAINT fk_clave_clase_estar FOREIGN KEY (clave_clase) REFERENCES clase(clave_clase);

CREATE TABLE socio(
   clave_cliente INTEGER,
   edad INTEGER,
   correo VARCHAR(25),
   puntos INTEGER
);

ALTER TABLE socio ADD CONSTRAINT fk_clave_cliente_socio FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);

CREATE TABLE membresia(
   clave_membresia INTEGER,
   Basico VARCHAR(25),
   plus VARCHAR(25),
   Premium VARCHAR(25)
);

ALTER TABLE membresia ADD CONSTRAINT pk_clave_membresia PRIMARY KEY(clave_membresia);

CREATE TABLE tipo_membresia(
   clave_tipo INTEGER,
   clave_membresia INTEGER,
   precio_basico INTEGER,
   precio_plus INTEGER,
   precio_premium INTEGER
);

ALTER TABLE tipo_membresia ADD CONSTRAINT pk_clave_tipo PRIMARY KEY(clave_tipo);
ALTER TABLE tipo_membresia ADD CONSTRAINT fk_clave_membresia FOREIGN KEY (clave_membresia) REFERENCES membresia(clave_membresia);

CREATE TABLE tener_membresia(
   clave_membresia INTEGER,
   clave_cliente INTEGER
);

ALTER TABLE tener_membresia ADD CONSTRAINT fk_clave_tener_membresia FOREIGN KEY (clave_membresia) REFERENCES membresia(clave_membresia);
ALTER TABLE tener_membresia ADD CONSTRAINT fk_clave_cliente_membresia FOREIGN KEY (clave_cliente) REFERENCES cliente(clave_cliente);
