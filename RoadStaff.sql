
CREATE TABLE RoadStaff
(
StaffID int PRIMARY KEY CHECK (LENGTH(StaffID) > 5) ON DELETE CASCADE,
Name varchar(45) NOT NULL CHECK (LENGTH(Name) <= 45),
Age int,
PhoneNumber varchar(15) NOT NULL CHECK (LENGTH(PhoneNumber) <= 15)
DrivingYears int,
Van varchar(45) FOREIGN KEY REFERENCES Vans(Name),
Term varchar(15) NOT NULL CHECK (Term = 'Full time' OR Term = 'Fixed contract' OR Term = 'Part time')
);


INSERT INTO RoadStaff (StaffID, Name, Age, PhoneNumber, DrivingYears, Term) 
  VALUES (02043, 'James Doyle', 30, '086 467 4562', 4, 'Full time');

INSERT INTO RoadStaff (StaffID, Name, PhoneNumber, Term) 
  VALUES (02098, 'Jim Faron', '087 344 9876', 'Part time');

INSERT INTO RoadStaff (StaffID, Name, Age, PhoneNumber, DrivingYears, Term) 
  VALUES (02057, 'Eoin Kenny', 26, '089 394 2336', 4, 'Full time');

INSERT INTO RoadStaff (StaffID, Name, Age, PhoneNumber, DrivingYears, Term) 
  VALUES (02065, 'Gary Legen', 28, '087 765 7970', 4, 'Fixed contract');

INSERT INTO RoadStaff (StaffID, Name, PhoneNumber, DrivingYears, Term) 
  VALUES (02062, 'Ian Connolly', '083 312 0776', 4,'Part time');
