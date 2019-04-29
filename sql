CREATE TABLE Publisher
(	PubCode		CHAR (2) NOT NULL,
	PubName		VARCHAR2 (30),
	PubCity		VARCHAR2 (20),
	CONSTRAINT Publisher_PubCode_PK PRIMARY KEY (PubCode)	);

CREATE TABLE Author
(	AuthorNo		CHAR (2) NOT NULL,
	AuthFName		VARCHAR2 (20),
	AuthLName		VARCHAR2 (20),
	CONSTRAINT Author_AuthorNo_PK PRIMARY KEY (AuthorNo)	);

CREATE TABLE Branch
(	BranchNo		CHAR (1) NOT NULL,
	BrName			VARCHAR2 (20),
	BrLocation		VARCHAR2 (30),
	NoEmp			NUMBER (4),
	CONSTRAINT Branch_BranchNo_PK PRIMARY KEY (BranchNo)	);

CREATE TABLE Book
(	BookCode		CHAR (4) NOT NULL,
	Title			VARCHAR2 (50),
	Type			VARCHAR2 (15),
	Price			Number (6,2),
	Cover		VARCHAR2 (2),
	PubCode			CHAR (2) NOT NULL,
	CONSTRAINT Book_BookCode_PK PRIMARY KEY (BookCode),
	CONSTRAINT Book_PubCode_Publisher_FK FOREIGN KEY (PubCode) REFERENCES Publisher(PubCode)	);

CREATE TABLE Wrote
(	BookCode		CHAR (4) NOT NULL,
	AuthorNo		CHAR (2) NOT NULL,
	AuthSequence		NUMBER (2),
	CONSTRAINT Wrote_BookCode_AuthorNo_PK PRIMARY KEY (BookCode, AuthorNo),
	CONSTRAINT Wrote_BookCode_Book_FK FOREIGN KEY (BookCode) REFERENCES Book(BookCode),
	CONSTRAINT Wrote_AuthorNo_Author_FK FOREIGN KEY (AuthorNo) REFERENCES Author(AuthorNo)	);

CREATE TABLE Inventory
(	BookCode		CHAR (4) NOT NULL,
	BranchNo		CHAR (1) NOT NULL,
	QOH			NUMBER (4),
	CONSTRAINT Inventory_BranchNo_BranchNo_PK PRIMARY KEY (BookCode, BranchNo),
	CONSTRAINT Inventory_BookCode_Book_FK FOREIGN KEY (BookCode) REFERENCES Book(BookCode),
	CONSTRAINT Inventory_BranchNo_Branch_FK FOREIGN KEY (BranchNo) REFERENCES Branch(BranchNo)	);


INSERT INTO Publisher
VALUES ('AH', 'Arkham House', 'Sauk City');

INSERT INTO Publisher
	VALUES ('AP', 'Arcade Publishing', 'New York');

INSERT INTO Publisher
	VALUES ('BA', 'Basic Books', 'Boulder');

INSERT INTO Publisher
	VALUES ('BP', 'Berkley Publishing', 'Boston');

INSERT INTO Publisher
	VALUES ('BY', 'Back Bay Books', 'New York');

INSERT INTO Publisher
	VALUES ('CT', 'Course Technology', 'Boston');

INSERT INTO Publisher
	VALUES ('FA', 'Fawcett Books', 'New York');

INSERT INTO Publisher
	VALUES ('FS', 'Farrar Straus and Giroux', 'New York');

INSERT INTO Publisher
	VALUES ('HC', 'HarperCollins Publishers', 'New York');

INSERT INTO Publisher
	VALUES ('JP', 'Jove Publications', 'New York');

INSERT INTO Publisher
	VALUES ('JT', 'Jeremy P. Tarcher', 'Los Angeles');

INSERT INTO Publisher
	VALUES ('LB', 'Lb Books', 'New York');

INSERT INTO Publisher
	VALUES ('MP', 'McPherson and Co.', 'Kingston');

INSERT INTO Publisher
	VALUES ('PE', 'Penguin USA', 'New York');

INSERT INTO Publisher
	VALUES ('PL', 'Plume', 'New York');

INSERT INTO Publisher
	VALUES ('PU', 'Putnam Publishing Group', 'New York');

INSERT INTO Publisher
	VALUES ('RH', 'Random House', 'New York');

INSERT INTO Publisher
	VALUES ('SB', 'Schoken Books', 'New York');

INSERT INTO Publisher
	VALUES ('SC', 'Scribner', 'New York');

INSERT INTO Publisher
	VALUES ('SS', 'Simon and Schuster', 'New York');



INSERT INTO Author
	VALUES ('1', 'Toni', 'Morrison');

INSERT INTO Author
	VALUES ('2', 'Paul', 'Solotaroff');

INSERT INTO Author
	VALUES ('3', 'Vernon', 'Vintage');

INSERT INTO Author
	VALUES ('4', 'Dick', 'Francis');

INSERT INTO Author
	VALUES ('5', 'Peter', 'Straub');

INSERT INTO Author
	VALUES ('6', 'Stephen', 'King');

INSERT INTO Author
	VALUES ('7', 'Philip', 'Pratt');

INSERT INTO Author
	VALUES ('8', 'Trudy', 'Chase');

INSERT INTO Author
	VALUES ('9', 'Bradley', 'Collins');

INSERT INTO Author
	VALUES ('10', 'Joseph', 'Heller');

INSERT INTO Author
	VALUES ('11', 'Gary', 'Wills');

INSERT INTO Author
	VALUES ('12', 'Douglas R.', 'Hofstadter');

INSERT INTO Author
	VALUES ('13', 'Harper', 'Lee');

INSERT INTO Author
	VALUES ('14', 'Stephen E.', 'Ambrose');

INSERT INTO Author
	VALUES ('15', 'J.K.', 'Rowling');



INSERT INTO Branch
	VALUES ('1', 'Henry Downtown', '16 Riverview', 10);

INSERT INTO Branch
	VALUES ('2', 'Henry On The Hill', '1289 Bedford', 6);

INSERT INTO Branch
	VALUES ('3', 'Henry Brentwood', 'Brentwood Mall', 15);

INSERT INTO Branch
	VALUES ('4', 'Henry Eastshore', 'Eastshore Mall', 9);



INSERT INTO Book
	VALUES ('0180', 'A Deepness in the Sky', 'SFI', 7.19, 'PB', 'LB');

INSERT INTO Book
	VALUES ('0189', 'Magic Terror', 'HOR', 7.99, 'PB', 'FA');

INSERT INTO Book
	VALUES ('0200', 'The Stranger', 'FIC', 8.00, ' ', 'SB');

INSERT INTO Book
	VALUES ('0378', 'Venice', 'ART', 24.50, 'HC', 'SS');

INSERT INTO Book
	VALUES ('079X', 'Second Wind', 'MYS', 24.95, 'HC', 'PU');

INSERT INTO Book
	VALUES ('0808', 'The Edge', 'MYS', 6.99, 'PB', 'JP');

INSERT INTO Book
	VALUES ('1351', 'Dreamcatcher: A Novel', 'HOR', 19.60, 'HC', 'SC');

INSERT INTO Book
	VALUES ('1382', 'Treasure Chests', 'ART', 24.46, '', 'FA');

INSERT INTO Book
	VALUES ('138X', 'Beloved', 'FIC', 12.95, 'PB', 'PL');

INSERT INTO Book
	VALUES ('2226', 'Harry Potter and the Prisoner of Azkaban', 'SFI', 13.96, 'HC', 'JT');

INSERT INTO Book
	VALUES ('2281', 'Van Gogh and Gauguin', 'ART', 21.00, 'HC', 'MP');

INSERT INTO Book
	VALUES ('2766', 'Of Mice and Men', 'FIC', 6.95, 'PB', 'PE');

INSERT INTO Book
	VALUES ('2908', 'Electric Light', 'POE', 14.00, 'HC', 'FS');

INSERT INTO Book
	VALUES ('3350', 'Group: Six People in Search of a Life', 'PSY', 10.40, 'PB', 'BP');

INSERT INTO Book
	VALUES ('3743', 'Nine Stories', 'FIC', 5.99, 'PB', 'LB');

INSERT INTO Book
	VALUES ('3906', 'The Soul of a New Machine', 'SCI', 11.16, 'PB', 'BY');

INSERT INTO Book
	VALUES ('5163', 'Travels with Charley', 'TRA', 7.95, 'PB', 'PE');



INSERT INTO Wrote
VALUES ('0180', '3', 1);

INSERT INTO Wrote
	VALUES ('0189', '5', 1);

INSERT INTO Wrote
	VALUES ('0200', '8', 1);

INSERT INTO Wrote
	VALUES ('0378', '11', 1);

INSERT INTO Wrote
	VALUES ('079X', '4', 1);

INSERT INTO Wrote
	VALUES ('0808', '4', 1);

INSERT INTO Wrote
	VALUES ('1351', '6', 1);

INSERT INTO Wrote
	VALUES ('1382', '15', 2);

INSERT INTO Wrote
	VALUES ('138X', '1', 1);



INSERT INTO Inventory
	VALUES ('0180', '1', 2);

INSERT INTO Inventory
	VALUES ('0189', '2', 2);

INSERT INTO Inventory
	VALUES ('0200', '1', 1);

INSERT INTO Inventory
	VALUES ('0200', '2', 3);

INSERT INTO Inventory
	VALUES ('0378', '3', 2);

INSERT INTO Inventory
	VALUES ('079X', '2', 1);

INSERT INTO Inventory
	VALUES ('079X', '3', 2);

INSERT INTO Inventory
	VALUES ('079X', '4', 3);

INSERT INTO Inventory
	VALUES ('0808', '2', 1);

INSERT INTO Inventory
	VALUES ('1351', '2', 4);

INSERT INTO Inventory
	VALUES ('1351', '3', 2);

INSERT INTO Inventory
	VALUES ('1382', '2', 1);

INSERT INTO Inventory
	VALUES ('138X', '2', 3);

INSERT INTO Inventory
	VALUES ('2226', '1', 3);

INSERT INTO Inventory
	VALUES ('2226', '3', 2);

INSERT INTO Inventory
	VALUES ('2226', '4', 1);

INSERT INTO Inventory
	VALUES ('2281', '4', 3);

INSERT INTO Inventory
	VALUES ('2766', '3', 2);

INSERT INTO Inventory
	VALUES ('2908', '1', 3);

INSERT INTO Inventory
	VALUES ('2908', '4', 1);
