CREATE TABLE Props
(
PropID int PRIMARY KEY CHECK (LENGTH(PropID) > 5) ON DELETE CASCADE,
Name varchar(45) NOT NULL CHECK (LENGTH(Name) <= 45),
Type varchar(45) CHECK (Type = 'Game' OR Type = 'Furniture' OR Type = 'Backdrop' OR Type = 'Prop' OR Type = 'Costume' OR Type = 'Flooring'),
Theme varchar(45),
Booked varchar(1) NOT NULL CHECK (Booked = 'Y' OR Booked = 'N'),
BookedBy varchar(45) FOREIGN KEY REFERENCES Events(Client),
Price int NOT NULL
);

INSERT INTO Props (PropId, Name, Type, Theme, Booked, BookedBy, Price) 
  VALUES (03044, 'Antler couch', 'Furniture', 'Rustic', 'Y', 'Amazon', 150);

INSERT INTO Props (PropID, Name, Type, Theme, Booked, BookedBy, Price) 
  VALUES (03046, 'Antler chair', 'Furniture', 'Rustic', 'Y', 'Amazon', 130);

INSERT INTO Props (PropID, Name, Type, Theme, Booked, BookedBy, Price) 
  VALUES (03045, 'Antler chair', 'Furniture', 'Rustic', 'Y', 'Amazon', 130);

INSERT INTO Props (PropID, Name, Type, Theme, Booked, BookedBy, Price) 
  VALUES (03048, 'Antler table', 'Furniture', 'Rustic', 'Y', 'Amazon', 100);

INSERT INTO Props (PropID, Name, Type, Theme, Booked, Price) 
  VALUES (03085, 'Classroom', 'Backdrop', 'School', 'N', 60);

INSERT INTO Props (PropID, Name, Type, Theme, Booked, Price) 
  VALUES (03093, 'Nutcracker', 'Prop', 'Christmas', 'N', 200);


