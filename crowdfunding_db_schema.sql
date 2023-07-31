
CREATE TABLE Contacts (
    Contact_ID int,
    First_Name varchar,
    Last_Name varchar,
    Email varchar,
	primary key (Contact_ID)
);

CREATE TABLE Category (
    Category_ID varchar,
    Category varchar,
	primary key (Category_ID)
);

CREATE TABLE Subcategory (
    Subcategory_ID varchar,
    Subcategory varchar,
	primary key (Subcategory_ID)
);

create table Campaign(
    CF_ID int,
    Contact_ID int,
    Company_Name varchar,
    Description varchar,
    Goal double,
    Pledged double,
    Outcome varchar,
    Backers_Count int,
    Country varchar,
    Currency varchar,
    Launched_Date date,
    End_Date date,
    Category_ID varchar,
    Subcategory_ID varchar,
    primary key (CF_ID),
    foreign key (Contact_ID) references Contacts(Contact_ID),
	foreign key (Category_ID) references Category(Category_ID),
	foreign key (Subcategory_ID) references Subcategory(Subcategory_ID)
);

select * from Contacts
select * from Category
select * from Subcategory
select * from Campaign