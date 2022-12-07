CREATE DATABASE IF NOT EXISTS cafeteria;

USE cafeteria;

CREATE TABLE IF NOT EXISTS cliente (
    Cliente_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    Email VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS producto (
    Producto_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Precio DECIMAL(9 , 2 ) NOT NULL,
    Cantidad INT NOT NULL,
    Stock INT NOT NULL,
    Fecha_de_compra DATETIME,
    Tipo varchar(30)
);

CREATE TABLE IF NOT EXISTS pedido (
    Pedido_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Cliente_ID INT NOT NULL UNIQUE,
    Producto_ID INT NOT NULL UNIQUE,
    Cantidad integer not null,
    Monto_Total decimal(9,2) not null,
    Descripcion varchar(250),
    FOREIGN KEY (Cliente_ID)
        REFERENCES cliente (Cliente_ID),
    FOREIGN KEY (Producto_ID)
        REFERENCES producto (Producto_ID)
);

CREATE TABLE IF NOT EXISTS mozo (
    Mozo_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    Pedido_ID INT NOT NULL UNIQUE,
    FOREIGN KEY (Pedido_ID)
        REFERENCES pedido (Pedido_ID)
);

CREATE TABLE IF NOT EXISTS mesa (
    Mesa_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Numero_personas INT,
    Cliente_ID INT NOT NULL UNIQUE,
    FOREIGN KEY (Cliente_ID)
        REFERENCES cliente (Cliente_ID)
);



CREATE TABLE IF NOT EXISTS factura (
    Factura_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Importe DECIMAL(9 , 2 ) NOT NULL,
    Fecha DATETIME,
    Hora DATETIME,
    Pedido_ID INT NOT NULL UNIQUE,
    Mozo_ID INT NOT NULL UNIQUE,
    Mesa_ID INT NOT NULL UNIQUE,
    FOREIGN KEY (Pedido_ID)
        REFERENCES pedido (Pedido_ID),
    FOREIGN KEY (Mozo_ID)
        REFERENCES mozo (Mozo_ID),
	FOREIGN KEY (Mesa_ID)
        REFERENCES mesa (Mesa_ID)
);

CREATE TABLE IF NOT EXISTS proveedor (
    Proveedor_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Direccion VARCHAR(30) NOT NULL,
    Email VARCHAR(30) NOT NULL,
    Telefono INT
);

CREATE TABLE IF NOT EXISTS pedido_proveedor (
    Pedido_proveedor_ID INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    Cantidad INTEGER NOT NULL,
    Monto_Total DECIMAL(9 , 2 ) NOT NULL,
    Descripcion VARCHAR(250) NOT NULL,
    Proveedor_ID INT NOT NULL UNIQUE,
    Producto_ID INT NOT NULL UNIQUE,
    FOREIGN KEY (Proveedor_ID)
        REFERENCES proveedor (Proveedor_ID),
    FOREIGN KEY (Producto_ID)
        REFERENCES producto (Producto_ID)
);
