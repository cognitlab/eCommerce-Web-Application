CREATE TABLE CATEGORY(
	
	CategoryId INT PRIMARY KEY IDENTITY(1,1),
	CategoryName VARCHAR(100) NOT NULL,
	CategoryImgUrl VARCHAR(MAX) NOT NULL,
	IsActive BIT NOT NULL,
	CreatedDate DATETIME NOT NULL
)

CREATE TABLE SubCategory
(
SubCategoryId INT PRIMARY KEY IDENTITY(1,1),
SubCategoryName VARCHAR(100) NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Category(CategoryId) ON DELETE CASCADE NOT NULL,
IsActive BIT NOT NULL,
CreatedDate DATETIME NOT NULL
)

CREATE TABLE Product 
(
      ProductId INT PRIMARY KEY IDENTITY(1,1),
      ProductName VARCHAR(100) NOT NULL,
      ShortDescription VARCHAR(200) NOT NULL,
      LongDescription VARCHAR(MAX) NOT NULL,
      AdditionalDescription VARCHAR(MAX) NULL,
      Price DECIMAL(18,2) NOT NULL,
      Quantity INT NOT NULL,
      Size VARCHAR(30) NULL,
      Color VARCHAR(50)  NULL,
      ComapanyName  VARCHAR(100) NULL,
      CategoryId INT FOREIGN KEY REFERENCES Category(CategoryId) ON DELETE CASCADE NOT NULL,
      SubCategoryId INT NOT NULL,
      Sold INT NULL,
      IsCustomized BIT NOT NULL,
      IsActive BIT NOT NULL,
     CreatedDate DATETIME NOT NULL
)