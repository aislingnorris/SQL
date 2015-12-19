CREATE TABLE Clients
(
ClientID int PRIMARY KEY CHECK (LENGTH(ClientID) > 5) ON DELETE CASCADE,
Name varchar(45) NOT NULL CHECK (LENGTH(Name) <= 45),
Type varchar(45) NOT NULL CHECK (Type = "Company" OR "Individual" OR "Charity" OR "Shopping Centre"),
PhoneNumber varchar(15) NOT NULL CHECK (LENGTH(PhoneNumber) <= 15),
Rating10 int CHECK (Rating10 >= 0 AND Rating10 <= 10) DEFAULT 10,
DiscountPC int CHECK (DiscountPC >= 0 AND DiscountPC <= 50) DEFAULT 0
);

INSERT INTO Clients (ClientID, Name, Type, PhoneNumber, Rating10, DiscountPC) 
  VALUES (06024, 'Amazon', 'Company', '083 476 5434', 7, 5);

INSERT INTO Clients (ClientID, Name, Type, PhoneNumber, Rating10, DiscountPC) 
  VALUES (06034, 'Google', 'Company', '086 548 5476', 8, 5);

INSERT INTO Clients (ClientID, Name, Type, PhoneNumber, Rating10, DiscountPC) 
  VALUES (06045, 'Milk Place', 'Company', '087 797 7960', 3, 0);

INSERT INTO Clients (ClientID, Name, Type, PhoneNumber, Rating10, DiscountPC) 
  VALUES (06012, 'Ted Jones', 'Individual', '083 587 3765', 6, 10);

INSERT INTO Clients (ClientID, Name, Type, PhoneNumber, Rating10, DiscountPC) 
  VALUES (06087, 'Irish Cancer Society', 'Charity', '086 876 7686', 9, 25);

INSERT INTO Clients (ClientID, Name, Type, PhoneNumber, Rating10, DiscountPC) 
  VALUES (06005, 'Dundrum Town Centre', 'Shopping Centre', '089 349 3947', 5, 5);