-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Products" (
    "ProductName" varchar(100)   NOT NULL,
    "PartNumber" int   NOT NULL,
    "Size" varchar(20)   NOT NULL,
    "Color" varchar(20)   NOT NULL,
    "Price" money   NOT NULL,
    "SupplierID" int   NOT NULL,
    "QuantityInStock" int   NOT NULL,
    CONSTRAINT "pk_Products" PRIMARY KEY (
        "PartNumber"
     )
);

CREATE TABLE "Suppliers" (
    "SupplierID" int   NOT NULL,
    "SupplierName" varchar(100)   NOT NULL,
    "PhoneNumber" char(10)   NOT NULL,
    "StreetAddress" varchar(100)   NOT NULL,
    "City" varchar(50)   NOT NULL,
    "State" char(2)   NOT NULL,
    "Zip" char(9)   NOT NULL,
    CONSTRAINT "pk_Suppliers" PRIMARY KEY (
        "SupplierID"
     )
);

ALTER TABLE "Products" ADD CONSTRAINT "fk_Products_SupplierID" FOREIGN KEY("SupplierID")
REFERENCES "Suppliers" ("SupplierID");

