CREATE TABLE cliente (
   clave_cliente INTEGER,
   nombre_cliente VARCHAR(25) NOT NULL,
   peterno_cliente VARCHAR(25),
   materno_cliente VARCHAR(25),
   telefono INTEGER NOT NULL,
   correo VARCHAR(25),
   fecha_nac DATE
);


CREATE TABLE producto (
   clave_producto INTEGER ,
   nombre VARCHAR(25) NOT NULL,
   marca VARCHAR(10),
   cantidad FLOAT,
   costo FLOAT
);

CREATE TABLE comprar (
    clave_cliente INTEGER ,
    clave_producto INTEGER
);



CREATE TABLE clase(
   clave_clase INTEGER,
   dia INTEGER ,
   hora INTEGER
);


CREATE TABLE llevar(
   clave_cliente INTEGER,
   clave_clase INTEGER
);


CREATE TABLE personal(
   clave_personal INTEGER,
   clave_nombre INTEGER,
   paterno VARCHAR(25) NOT NULL,
   materno VARCHAR(25) NOT NULL,
   nombre VARCHAR(25) NOT NULL,
   telefono INTEGER,
   fec_nacimiento VARCHAR(25) NOT NULL
);


CREATE TABLE instructor_basico(
    clave_personal INTEGER,
    edad INTEGER,
    sueldo INTEGER,
    dia INTEGER,
    hora TIMESTAMP
);


CREATE TABLE instructor_particular(
   clave_personal INTEGER,
   edad INTEGER,
   sueldo INTEGER,
   dia INTEGER,
   hora  TIMESTAMP
);

CREATE TABLE nutriologo(
   clave_personal INTEGER,
   dia INTEGER,
   hora_nutriologo TIMESTAMP,
   sueldo_nutriologo INTEGER
);


CREATE TABLE impartir_clase(
   clave_personal INTEGER,
   clave_clase INTEGER
);

CREATE TABLE salon(
   clave_salon INTEGER,
   lugar VARCHAR(25),
   Rol VARCHAR(25)
);


CREATE TABLE estar(
   clave_salon INTEGER,
   clave_clase INTEGER
);


CREATE TABLE socio(
   clave_cliente INTEGER,
   edad INTEGER,
   correo VARCHAR(25),
   puntos INTEGER
);


CREATE TABLE membresia(
   clave_membresia INTEGER,
   Basico VARCHAR(25),
   plus VARCHAR(25),
   Premium VARCHAR(25)
);


CREATE TABLE tipo_membresia(
   clave_tipo INTEGER,
   clave_membresia INTEGER,
   precio_basico INTEGER,
   precio_plus INTEGER,
   precio_premium INTEGER
);

CREATE TABLE tener_membresia(
   clave_membresia INTEGER,
   clave_cliente INTEGER
);
