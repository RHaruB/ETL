--create database NEXTI
--create database DWH_NEXTI
use NEXTI
Create table Persona (
Nombres varchar(200), Apellidos varchar(200), Cedula varchar(10)
)
Create table Informacion (
Cedula varchar(10),
Telefono varchar(20),
Correo varchar(100),
Direccion varchar(max)
)


INSERT INTO Persona (Nombres, Apellidos, Cedula)
VALUES
    ('Juan', 'Perez', '1234567890'),
    ('Maria', 'Gomez', '9876543210'),
    ('Pedro', 'Rodriguez', '5678901234'),
    ('Ana', 'Lopez', '3456789012');

INSERT INTO Informacion (Cedula, Telefono, Correo, Direccion)
VALUES
    ('1234567890', '555-123-4567', 'juan.perez@email.com', '123 Calle Principal, Ciudad'),
    ('9876543210', '555-987-6543', 'maria.gomez@email.com', '456 Avenida Secundaria, Ciudad'),
    ('5678901234', '555-567-8901', 'pedro.rodriguez@email.com', '789 Calle Secundaria, Ciudad'),
    ('3456789012', '555-345-6789', 'ana.lopez@email.com', '901 Avenida Principal, Ciudad');


	select Nombres, Apellidos, Persona.Cedula, Telefono, Correo, Direccion from Persona join Informacion on (Persona.Cedula = Informacion.Cedula)