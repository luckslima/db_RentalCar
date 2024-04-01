-- Criando as tabelas do Banco de dados 

-- #2 Criando a tabela CUSTOMERS
CREATE TABLE CUSTOMERS (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        NAME VARCHAR(100) NOT NULL,
        LASTNAME TEXT NOT NULL,
        PHONE VARCHAR(100),
        EMAIL VARCHAR(100) NOT NULL, 
        ADDRESS TEXT NOT NULL,
        CITY TEXT NOT NULL,
        STATE VARCHAR(2) NOT NULL, 
        BIRTH_DATE DATE NOT NULL
);

-- #3 Criando a tabela CAR_MODEL
CREATE TABLE CAR_MODEL (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        MODEL_NAME VARCHAR(100) NOT NULL
);

-- #4 Criando a tabela CAR_BRAND
CREATE TABLE CAR_BRAND (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        BRAND_NAME VARCHAR(100) NOT NULL
);

-- #5 Criando a tabela POSITIONS
CREATE TABLE POSITIONS (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        DESCRIPTION TEXT NOT NULL
);

-- #6 Criando a tabela EMPLOYEES
CREATE TABLE EMPLOYEES (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        NAME TEXT NOT NULL,
        PHONE TEXT,
        CONTRACT_DATE DATE NOT NULL,
        POSITION_ID INTEGER NOT NULL,
        FOREIGN KEY (POSITION_ID) REFERENCES POSITIONS(ID)
);

-- #7 Criando a tabela CARS
CREATE TABLE CARS (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        NAME TEXT NOT NULL,
        YEAR INTEGER NOT NULL,
        COLOR VARCHAR(100) NOT NULL,
        KM INTEGER NOT NULL,
        STATUS TEXT NOT NULL,
        BRAND_ID INTEGER NOT NULL,
        MODEL_ID INTEGER NOT NULL,
        FOREIGN KEY (BRAND_ID) REFERENCES CAR_BRAND(ID)
        FOREIGN KEY (MODEL_ID) REFERENCES CAR_MODEL(ID)
);

-- #8 Criando a tabela LOCATIONS
CREATE TABLE LOCATIONS (
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        START_DATE DATE NOT NULL,
        END_DATE DATE NOT NULL,
        TOTAL INTEGER NOT NULL,
        CUSTOMER_ID INTEGER NOT NULL,
        CAR_ID INTEGER NOT NULL,
        EMPLOYEE_ID INTEGER NOT NULL,
        FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID),
        FOREIGN KEY (CAR_ID) REFERENCES CARS(ID),   
        FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(ID)     
);