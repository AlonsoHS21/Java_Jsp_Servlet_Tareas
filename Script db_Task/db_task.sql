drop database if exists dbtask;

create database dbtask;
use dbtask;

create table if not exists datosPersonales(
	dni int not null, 
    idUsuario int not null,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    sexo varchar(20) not null,
    fechaNacimiento date not null,
    telefonoCelular int null, #Es opcional
    correoElectronico varchar(45) not null,
    idNacionalidad int not null,
    Primary Key(Dni)
);
create table if not exists usuarios(
	idUsuario int auto_increment,
    idTipoUsuario int not null,
    nombreUsuario varchar(45) unique not null,
    contrasenia varchar(45) not null,
    Primary Key(idUsuario)
);
create table if not exists tiposDeUsuarios (
	idTipoUsuario int auto_increment,
    descripcion varchar(20) not null,
    Primary Key(idTipoUsuario)
);
create table if not exists nacionalidades (
	idNacionalidad int auto_increment,
    nombre varchar(20) not null,
    Primary Key(idNacionalidad)
);
create table if not exists tareas (
	idTarea int auto_increment,
    dni int not null,
    idTipoTarea int not null,
    fechaCreacion date not null,
    fechaCierre date null, #Es opcional pero solo para idTipoTarea de tipo sin fecha de cierre
    descripcion varchar(45) not null,
    Primary Key(idTarea,dni)
);
create table if not exists tiposDeTareas (
	idTipoTarea int auto_increment,
    nombre varchar(45) not null,
    primary key(idTipoTarea)
);

# --------------------------------------------- FOREIGN KEY ---------------------------------------------

# ---- Datos Personales ----
alter table datosPersonales add foreign key (idUsuario) references usuarios (idUsuario);
alter table datosPersonales add foreign key (idNacionalidad) references nacionalidades (idNacionalidad);
# ---- Usuarios ----
alter table usuarios add foreign key (idTipoUsuario) references tiposDeUsuarios (idTipoUsuario);
# ---- Tareas ----
alter table tareas add foreign key (dni) references datosPersonales (dni);
alter table tareas add foreign key (idTipoTarea) references tiposDeTareas (idTipoTarea);

# --------------------------------------------- INSERTS INTO ---------------------------------------------
insert into tiposDeTareas (nombre) values ("No urgente");
insert into tareas (dni,idTipoTarea,fechaCreacion,fechaCierre,descripcion) values (94302637,1,"01/01/2021","01/01/2021","Esta es una tarea de prueba");
