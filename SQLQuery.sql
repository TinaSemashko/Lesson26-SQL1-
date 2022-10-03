CREATE TABLE Phone_book
(
    Id INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Phone VARCHAR(20) UNIQUE,
	Addres NVARCHAR(50)
);

CREATE TABLE School_shedule
(
    Id INT PRIMARY KEY IDENTITY,
    Teacher NVARCHAR(30) NOT NULL,
    Lesson NVARCHAR(20) NOT NULL,
    DateLesson Date,
	Room INT NOT NULL
);

CREATE TABLE Users
(
    Id INT PRIMARY KEY IDENTITY,
	RealName NVARCHAR(20) NOT NULL,
	UserName NVARCHAR(20) NOT NULL,
	Passw NVARCHAR(16) NOT NULL,
   
);

CREATE TABLE Users_login_hystory
(
    Id INT PRIMARY KEY IDENTITY,
	UserId INT NOT NULL,
    FOREIGN KEY (UserId)  REFERENCES Users (Id),    
    DateChanges Date,
	UserName NVARCHAR(20)
);

CREATE TABLE Bank_accounts
(
    Id INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	NomberAcc INT UNIQUE NOT NULL  
);

CREATE TABLE Contragents
(
    Id INT PRIMARY KEY IDENTITY,
	ContragentName NVARCHAR(20) NOT NULL,
	NomberAcc INT UNIQUE NOT NULL,
	IBAN NVARCHAR(29) UNIQUE NOT NULL
   
);

CREATE TABLE Transactions
(
    Id INT PRIMARY KEY IDENTITY,
	DateTransaction Date,
	UserId INT NOT NULL,
    FOREIGN KEY (UserId)  REFERENCES Users (Id), 
	AccId INT NOT NULL,
    FOREIGN KEY (AccId)  REFERENCES Bank_accounts (Id), 	
	ContragentId INT NOT NULL,
	FOREIGN KEY (ContragentId) REFERENCES Contragents (Id),
	Summa FLOAT	
);
//checked
