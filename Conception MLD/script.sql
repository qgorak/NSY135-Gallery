CREATE TABLE Users(
   Id_User INT AUTO_INCREMENT,
   Firstname VARCHAR(50) ,
   Lastname VARCHAR(50) ,
   Phone_Number VARCHAR(50) ,
   Email VARCHAR(255) ,
   Password_Hash VARCHAR(255) ,
   PRIMARY KEY(Id_User)
);

CREATE TABLE Gallery(
   Id_Gallery INT AUTO_INCREMENT,
   Name VARCHAR(255) ,
   Description TEXT,
   Created DATETIME,
   Updated VARCHAR(50) ,
   Id_User INT NOT NULL,
   PRIMARY KEY(Id_Gallery),
   FOREIGN KEY(Id_User) REFERENCES Users(Id_User)
);

CREATE TABLE Orders(
   Id_Order INT AUTO_INCREMENT,
   Created DATETIME,
   Updated DATETIME,
   Status TINYINT,
   Id_Gallery INT NOT NULL,
   PRIMARY KEY(Id_Order),
   FOREIGN KEY(Id_Gallery) REFERENCES Gallery(Id_Gallery)
);

CREATE TABLE Order_Shipping_Adress(
   Id_Order_Shipping_Adress INT AUTO_INCREMENT,
   Country VARCHAR(255) ,
   City VARCHAR(255) ,
   Postal_Code VARCHAR(255) ,
   Adress VARCHAR(255) ,
   Id_Order INT NOT NULL,
   Id_User INT NOT NULL,
   PRIMARY KEY(Id_Order_Shipping_Adress),
   FOREIGN KEY(Id_Order) REFERENCES Orders(Id_Order),
   FOREIGN KEY(Id_User) REFERENCES Users(Id_User)
);

CREATE TABLE Photo(
   Id_Photo INT AUTO_INCREMENT,
   Path VARCHAR(255) ,
   Created DATETIME,
   Id_Gallery INT NOT NULL,
   PRIMARY KEY(Id_Photo),
   FOREIGN KEY(Id_Gallery) REFERENCES Gallery(Id_Gallery)
);

CREATE TABLE Order_Element(
   Id_Order_Element INT AUTO_INCREMENT,
   Quantity VARCHAR(50) ,
   Id_Order_Shipping_Adress INT NOT NULL,
   Id_Photo INT NOT NULL,
   PRIMARY KEY(Id_Order_Element),
   FOREIGN KEY(Id_Order_Shipping_Adress) REFERENCES Order_Shipping_Adress(Id_Order_Shipping_Adress),
   FOREIGN KEY(Id_Photo) REFERENCES Photo(Id_Photo)
);

CREATE TABLE Gallery_Shared_Contact(
   Id_User INT,
   Id_Gallery INT,
   PRIMARY KEY(Id_User, Id_Gallery),
   FOREIGN KEY(Id_User) REFERENCES Users(Id_User),
   FOREIGN KEY(Id_Gallery) REFERENCES Gallery(Id_Gallery)
);

CREATE TABLE Contact(
   Id_User_2 INT,
   Id_User_1 INT,
   PRIMARY KEY(Id_User_2, Id_User_1),
   FOREIGN KEY(Id_User_2) REFERENCES Users(Id_User),
   FOREIGN KEY(Id_User_1) REFERENCES Users(Id_User)
);
