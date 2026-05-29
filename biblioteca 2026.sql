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
 
 
create table if not exists libro ( 
isbn_libro varchar(18) not null,
nombre_libro varchar(70) not null,
autor_libro varchar(70) not null,
fecha_publicación date not null,
primary key (isbn_libro)
);


create table if not exists prestamo (
id_prestamo Int unsigned not null auto_increment,
fk_matricula_estudiante INT unsigned not null,
fk_bibliotecario INT unsigned not null,
fecha_prestamo date not null,
fecha_devolucion_prevista date not null,
fecha_devolucion_real date not null,
estado_prestamo enum('activo', 'devuelto', 'vencido', 'cancelado' )
not null default 'activo' ,
primary key(id_prestamo) ,
Index idx_prestamo_estudiante(fk_matricula_estudiante) ,
Index idx_prestamo_bibliotecario(fk_bibliotecario) ,
constraint fk_prestamo_estudiante
           foreign key(fk_matricula_estudiante) 
           references estudiante(matrícula_estudiante)
           on update cascade
           on delete restrict,
constraint fk_prestamo_bibliotecario
		  foreign key (fk_bibliotecario)
          references bibliotecario (id_bibliotecario)
          on update cascade
          on delete restrict
          )
           






