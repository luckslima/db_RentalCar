-- Alterando e removendo registros

-- #9 Alterando o email da cliente de nome Carolina
UPDATE CUSTOMERS
SET EMAIL = 'carolina@campuscode.com.br'
WHERE NAME = 'Carolina';

-- #10 Alterando a data de nascimento da cliente Josefa 
UPDATE CUSTOMERS
SET BIRTH_DATE = '1986-06-19'
WHERE NAME = 'Josefa';

-- #11 Alterando o ano do carro Fiat Cronos
UPDATE CARS
SET YEAR = 2019
WHERE NAME = 'Fiat Cronos';

-- #12 Removendo o carro de nome Hyundai HB20 1.6
DELETE FROM CARS
WHERE NAME = 'Hyundai HB20 1.6';

