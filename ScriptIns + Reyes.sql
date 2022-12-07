use cafeteria;

insert into cliente 
values 
(1,'Virginia','Zuazquita','vzuazquita@gmail.com'),
(2,'Nelly','Zamboni','nzamboni@gmail.com'),
(3,'Francisco','Cozzi','fcozzi@gmail.com'),
(4,'Matias','Avila','mavila@gmail.com'),
(5,'Andres','Martin','amartin@gmail.com'),
(6,'Trinidad','Garcia','tgarcia@gmail.com'),
(7,'Juan','Baroni','jbaroni@gmail.com');

insert into mesa
values
('1', '4', '1'),
('2', '4', '2'),
('3', '4', '3');

insert into mozo
values
('1', 'Maxo', 'Krake','1','1'),
('2', 'Julieta', 'Krake','2','2'),
('3', 'Jose', 'Krake','3','3');

insert into productos
values
('1','Cold Brew','500','1','20','','Infusion'),
('2','Exprimido de Naranja','400','1','10','','infusion'),
('3','Mafalda','450','1','20','','Panaderia'),
('4','pau de chocolate','350','1','20','','panaderia'),
('5','Carrot cake','600','1','8','','pasteleria');

insert into pedido
values
('1','1','1','4','2000','');

insert into factura
values
('1','2000','','','1','1','1');
