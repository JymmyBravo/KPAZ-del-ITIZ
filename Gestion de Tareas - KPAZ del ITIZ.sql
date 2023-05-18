create database gestion_tarea;

use gestion_tarea;

create table usuarios(
id_usuario int auto_increment not null,
primary key (id_usuario),
nombre varchar (15),
contraseña varchar(8)
);

create table tareas(
id_tarea int auto_increment not null,
primary key (id_tarea),
titulo varchar (20),
descripcion varchar (35),
fecha date,
estado varchar (15),
id_usuario int
);

alter table tareas add foreign key (id_usuario) references usuarios (id_usuario);

create table etiquetas(
id_etiquetas int auto_increment not null,
primary key (id_etiquetas),
etiqueta varchar (15),
id_tarea int
);

alter table etiquetas add foreign key (id_tarea) references tareas (id_tarea);

select * from usuarios;

insert into usuarios (nombre, contraseña) values("Daniel", "12345678");
insert into usuarios (nombre, contraseña) values("Erick", "12121212");

insert into tareas (titulo, descripcion, fecha, estado, id_usuario) values ("geografia", "Tarea de paises", "2021-05-13" ,"completado","1");
insert into tareas (titulo, descripcion, fecha, estado, id_usuario) values ("matematicas", "problemas", "2022-04-02", "Progreso","1");
insert into tareas (titulo, descripcion, fecha, estado, id_usuario) values ("ecuaciones", "matrices", "2022-03-23", "pendiente","2");
insert into tareas (titulo, descripcion, fecha, estado, id_usuario) values ("español", "lenguas", "2021-06-17", "pendiente","1");
select * from tareas;


insert into etiquetas (etiqueta, id_tarea) values ("alta", "2");
insert into etiquetas (etiqueta, id_tarea) values ("media", "1");
insert into etiquetas (etiqueta, id_tarea) values ("baja", "3");
select * from etiquetas;

select * from tareas where estado = "pendiente";
select * from tareas where estado = "progreso";
select * from tareas where estado = "completado";


select * from tareas where fecha <= "2022-03-23";

select * from tareas where id_tarea = (select etiqueta from id);

select * from tareas where id_usuario="1";
select * from tareas where id_usuario="1";
