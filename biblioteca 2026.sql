create database IF not exists biblioteca_2026;
USE biblioteca_2026;

create table if not exists bibliotecario (
id_bibliotecario INT unsigned not null auto_increment comment " Numero de identificación de bibliotecario " ,
nombre_bibliotecario varchar(45) not null,
apellido_bibliotecario varchar(45) not null,
primary key (id_bibliotecario)
);

create table if not exists estudiante (
matrícula_estudiante INT unsigned not null auto_increment,
 nombre_estudiante varchar(45) not null,
 primary key (matricula_estudiante)
 );