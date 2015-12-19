CREATE TABLE Events
(
EventID int PRIMARY KEY CHECK (LENGTH(EventID) > 5) ON DELETE CASCADE,
Client varchar(45) FOREIGN KEY REFERENCES Clients(Name),
Location varchar(255),
DeliverDate date NOT NULL,
Confirmed varchar(1) NOT NULL CHECK (Confirmed= "Y" OR Confirmed = 'N'),
Deliverer varchar(45) FOREIGN KEY REFERENCES RoadStaff(Name),
Manager varchar(45) FOREIGN KEY REFERENCES MainStaff(Name) WHERE (MainStaff.Role = 'Event Manager')
);

INSERT INTO Events (EventID, Client, Location, DeliverDate, Confirmed) 
  VALUES (05066, 'Amazon', 'Radison Hotel', '12-DEC-15', 'Y');

INSERT INTO Events (EventID, Client, Location, DeliverDate, Confirmed) 
  VALUES (05023, 'Milk Place', '21-JAN-16', 'N');
