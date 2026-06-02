Create database if not exists alquilerVehiculos;
USE alquilerVehiculos;
Create table if not exists marcaVehiculo (
       idMarca INT primary key AUTO_INCREMENT not null, 
       nombreMarca VARCHAR(100) not null
); 

Create table if not exists modeloVehiculo (
      idModelo INT primary key AUTO_INCREMENT,
      nombreModelo VARCHAR(100) not null,
      idMarca INT not null,
      FOREIGN KEY (idMarca) REFERENCES marcaVehiculo(idMarca)
      );
      
Create table if not exists tablaVehiculo (
     idVehiculo INT primary key AUTO_INCREMENT not null,
     patente VARCHAR(20) not null,
     color VARCHAR(50) not null,
     idModelo INT not null,
     FOREIGN KEY (idModelo) REFERENCES modeloVehiculo(idModelo)
     );
     
Create table if not exists tablaCliente (
     idCliente INT primary key AUTO_INCREMENT not null,
     nombre VARCHAR(100) not null,
     telefono VARCHAR(30)
     );
     
Create table if not exists alquilerVehiculo (
        idAlquiler INT primary key AUTO_INCREMENT not null,
        fecha DATE not null,
        idCliente INT,
        FOREIGN KEY (idCliente) REFERENCES tablaCliente(idCliente)
);

CREATE TABLE if not exists detalleAlquiler (
    idDetalle INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    idAlquiler INT NOT NULL,
    idVehiculo INT NOT NULL,
    
    CONSTRAINT fk_detalle_alquiler 
        FOREIGN KEY (idAlquiler) REFERENCES alquilerVehiculo(idAlquiler),
        
    CONSTRAINT fk_detalle_vehiculo 
        FOREIGN KEY (idVehiculo) REFERENCES tablaVehiculo(idVehiculo)
);


        
        

     
      

       
