-- Consultas!

-- #14 Consultando nome, sobrenome e email de clientes que moram em SP
SELECT NAME, LASTNAME, EMAIL
FROM CUSTOMERS
WHERE STATE = 'SP';

-- #15 Consultando automoveis com status de Liberado 
SELECT *
FROM CARS
WHERE STATUS = 'Liberado';

-- #16 Consultando automoveis do ano de 2016
SELECT * 
FROM CARS 
WHERE YEAR = 2016

-- #17 Exibindo os funcionários e seus respectivos cargos
SELECT EMPLOYEES.NAME, POSITIONS.DESCRIPTION AS POSITION
FROM EMPLOYEES
JOIN POSITIONS ON EMPLOYEES.POSITION_ID = POSITIONS.ID;

-- #18 Exibindo os funcionários que realizaram 2 ou mais locações
SELECT E.NAME, COUNT(L.ID) AS NUM_LOCATIONS
FROM EMPLOYEES E
JOIN LOCATIONS L ON E.ID = L.EMPLOYEE_ID
GROUP BY E.ID
HAVING COUNT(L.ID) >= 2;

-- #19 Exibindo os funcionários que realizaram 2 ou mais locações
SELECT C.NAME, COUNT(L.ID) AS NUM_LOCATIONS
FROM CUSTOMERS C
JOIN LOCATIONS L ON C.ID = L.CUSTOMER_ID
GROUP BY C.ID
HAVING COUNT(L.ID) >= 2;

-- #20 Exibindo o nome do cliente, do funcionário e do carro de cada locação
SELECT 
    L.ID AS LOCATION_ID, 
    C.NAME || ' ' || C.LASTNAME AS CUSTOMER_NAME, 
    CA.NAME AS CAR_NAME, 
    E.NAME AS EMPLOYEE_NAME, 
    L.START_DATE, 
    L.END_DATE, 
    L.TOTAL
FROM LOCATIONS L
JOIN CUSTOMERS C ON L.CUSTOMER_ID = C.ID
JOIN CARS CA ON L.CAR_ID = CA.ID
JOIN EMPLOYEES E ON L.EMPLOYEE_ID = E.ID;

-- #21 Exibindo a quantidade total de locações
SELECT COUNT(*) AS TOTAL_LOCATIONS
FROM LOCATIONS;

-- #22 Exibindo a locação com maior valor  
SELECT * 
FROM LOCATIONS 
ORDER BY TOTAL DESC 
LIMIT 1;

-- #23 Consultando locações realizadas entre as datas “2022-05-20” a “2022-12-25”
SELECT *
FROM LOCATIONS
WHERE START_DATE >= '2022-05-20' AND END_DATE <= '2022-12-25';
