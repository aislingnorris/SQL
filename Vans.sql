CREATE TABLE Vans
(
VanID int PRIMARY KEY CHECK (LENGTH(VanID) > 5) ON DELETE CASCADE,
Name varchar(45) NOT NULL CHECK (LENGTH(Name) <= 45),
Registration varchar(45) NOT NULL,
LastService date NOT NULL,
Capacity int,
Seats int
);

INSERT INTO Vans (VanID, Name, Registration, LastService) 
  VALUES (04054, 'Iveco', '12 D 3784', '01-APR-15');

INSERT INTO Vans (VanID, Name, Registration, LastService, Capacity, Seats) 
  VALUES (04023, 'Luton', '132 KK 894', '29-MAY-15', 20, 3);

INSERT INTO Vans (VanID, Name, Registration, LastService, Capacity, Seats) 
  VALUES (04076, 'Fridge', '12 D 3784', '01-DEC-15', 18, 3);

INSERT INTO Vans (VanID, Name, Registration, LastService, Seats) 
  VALUES (04164, 'Box', '10 D 33474', '02-DEC-15', 3);

INSERT INTO Vans (VanID, Name, Registration, LastService, Capacity, Seats) 
  VALUES (04081, 'Nissan', '141 D 3784', '30-AUG-15', 16, 2);