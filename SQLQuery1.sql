CREATE TABLE Oruzje(
	oruzjeID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	naziv NVARCHAR(50) NOT NULL,
	serijskiBroj INT NOT NULL,
	serijskiBrojMunicije INT NOT NULL,
)

INSERT INTO Oruzje(naziv,serijskiBroj , serijskiBrojMunicije) VALUES ('AK47',11303,22306)
INSERT INTO Oruzje(naziv, serijskiBroj, serijskiBrojMunicije) VALUES ('M4A4',11134,12367)
INSERT INTO Oruzje(naziv, serijskiBroj, serijskiBrojMunicije) VALUES ('GLOCK',16791,10012)
INSERT INTO Oruzje (naziv, serijskiBroj, serijskiBrojMunicije) VALUES ('DEAGLE',13899,11110)
INSERT INTO Oruzje (naziv,serijskiBroj, serijskiBrojMunicije) VALUES ('FAMAS',65757,17000)
INSERT INTO Oruzje (naziv, serijskiBroj, serijskiBrojMunicije) VALUES ('AWM',10333,11113)

CREATE TABLE cenaOruzja (
	cenaID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	naziv NVARCHAR(50) NOT NULL,
	vrsta NVARCHAR(50) NOT NULL,
	m FLOAT NOT NULL
)

SELECT naziv, vrsta, m
FROM cenaOruzja
ORDER BY m DESC

INSERT INTO cenaOruzja(naziv,vrsta,m) VALUES ('M4A4','Rifle',13)
INSERT INTO cenaOruzja (naziv,vrsta,m) VALUES ('AK47','Rifle',20.4)
INSERT INTO cenaOruzja (naziv,vrsta,m) VALUES ('AWM','Sniper',11)
INSERT INTO cenaOruzja (naziv,vrsta,m) VALUES ('Glock','Pistol',13.7)
INSERT INTO cenaOruzja (naziv,vrsta,m) VALUES ('Deagle','Pistol', 16)

CREATE TABLE Ocene (
	OcenaID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	naziv NVARCHAR(50) NOT NULL,
	prosecanBrojOcena FLOAT NOT NULL,
)


