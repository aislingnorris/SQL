CREATE TABLE MainStaff
(
StaffID int PRIMARY KEY CHECK (LENGTH(StaffID) > 5) ON DELETE CASCADE,
Name varchar(45) NOT NULL CHECK (LENGTH(Name) <= 45) ,
Type varchar(45) NOT NULL CHECK (Type = 'Office' OR Type = 'Maker'),
Age int,
Office varchar(45),
Role varchar(45) NOT NULL CHECK (Role = 'Exec' 'Carpenter' OR Role = 'Accountant' 'Builder' OR Role = 'Event Manager'),
PhoneNumber varchar(15) NOT NULL CHECK (LENGTH(PhoneNumber) <= 15)
Term varchar(15) NOT NULL CHECK (Term = 'Full time' OR Term = 'Fixed contract' OR Term = 'Part time')
);  

INSERT INTO MainStaff (StaffID, Name, Type, Age, Office, Role, PhoneNumber, Term) 
  VALUES (01045, 'Jay Elmer', 'Office', 27, 'Main', 'Event Manager', '085 374 4534', 'Part time');

INSERT INTO MainStaff (StaffID, Name, Type, Age, Office, Role, PhoneNumber, Term) 
  VALUES (01001, 'David O Lochlan', 'Office', 36, 'Personal', 'Exec', '086 377 2344', 'Full time');

INSERT INTO MainStaff (StaffID, Name, Type, Age, Office, Role, PhoneNumber, Term) 
  VALUES (01005, 'Bill Taylor', 'Office', 32,'Personal', 'Accountant', '089 394 7034', 'Full time');

INSERT INTO MainStaff (StaffID, Name, Type, Age, Office, Role, PhoneNumber, Term) 
  VALUES (01030, 'Nathan Boyle', 'Maker', 23, 'Workshop', 'Builder', '086 365 1092', 'Fixed contract');

INSERT INTO MainStaff (StaffID, Name, Type, Office, Role, PhoneNumber, Term) 
  VALUES (010078, 'Shane Maloney', 'Maker','Workshop', 'Carpenter', '089 399 1992', 'Fixed contract');

INSERT INTO MainStaff (StaffID, Name, Type, Age, Office, Role, PhoneNumber, Term) 
  VALUES (01023, 'Emma Money', 'Office', 28, 'Main', 'Event Manager', '086 379 1954', 'Full time');
