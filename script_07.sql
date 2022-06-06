USE ECOMM_STORE;

CREATE TABLE T1 (
    C1 INT
);

INSERT INTO T1 (C1) VALUES (1), (2);

CREATE TABLE T2 (
    C1 INT
);

INSERT INTO T2 (C1) VALUES (1), (3);

COMMIT;

SELECT 
    *
FROM
    T1;

SELECT 
    *
FROM
    T2;

-- join - juntar 2 tabelas
-- types - inner join, left join, right join, full join, union

SELECT 
    T1.C1, T2.C1
FROM
    T1
        INNER JOIN
    T2 ON T1.C1 = T2.C1;

SELECT 
    T1.C1, T2.C1
FROM
    T1
        LEFT JOIN
    T2 ON T1.C1 = T2.C1;

SELECT 
    T1.C1, T2.C1
FROM
    T1
        RIGHT JOIN
    T2 ON T1.C1 = T2.C1;

-- FULL JOIN
SELECT 
    T1.C1, T2.C1
FROM
    T1
        LEFT JOIN
    T2 ON T1.C1 = T2.C1 
UNION SELECT 
    T1.C1, T2.C1
FROM
    T1
        RIGHT JOIN
    T2 ON T1.C1 = T2.C1;	

SELECT 
    C1
FROM
    T1 
UNION SELECT 
    C1
FROM
    T2;
    
SELECT 
    C1
FROM
    T1 
UNION ALL SELECT 
    C1
FROM
    T2;
    