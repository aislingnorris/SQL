--View of an Invoice
CREATE VIEW DeliveryInvoiceForAmazon AS
SELECT EventID, DeliverDate, Deliverer, Manager, Location
FROM Events
WHERE Client = "Amazon" AND Confirmed = 'Y';

UNION

SELECT PropID, Name, Price
FROM Props
WHERE BookedBy = "Amazon";

UNION

SELECT PhoneNumber, Discount
FROM Clients
WHERE Name = "Amazon";

--View of All Staff
CREATE VIEW AllStaff AS
SELECT StaffID, Name, Age, PhoneNumber, Term
FROM MainStaff;

UNION

CREATE VIEW AllStaff AS
SELECT StaffID, Name, Age, PhoneNumber, Term
FROM RoadStaff;


--JOIN
SELECT StaffID, Name, PhoneNumber
FROM MainStaff
INNER JOIN RoadStaff
WHERE Term = 'Full time';

--Trigger

CREATE TRIGGER NoLongerBooked
INSTEAD OF DELETE OF Booked ON Events
FOR EACH ROW
REFERENCING OLD ROW AS Old, NEW ROW AS New FOR EACH ROW
WHEN (New.Booked = 'N')
UPDATE Events SET BookedBy = NULL;
END;

--Update
UPDATE Clients
SET PhoneNumber='087 689 8654'
WHERE Name='Ted Jones';