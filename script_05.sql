SELECT 
    *
FROM
    PRODUCTS;

UPDATE PRODUCTS 
SET 
    QUANTITY = QUANTITY + 100
WHERE
    PRODUCT_ID = 1;
    
COMMIT;

UPDATE PRODUCTS 
SET 
    QUANTITY = QUANTITY + 50
WHERE
    PRODUCT_ID IN (1 , 2, 3);
    
UPDATE PRODUCTS 
SET 
    QUANTITY = CASE
        WHEN PRODUCT_ID = 1 THEN QUANTITY - 150
        WHEN PRODUCT_ID = 2 THEN QUANTITY - 50
        ELSE 100
    END
WHERE
    PRODUCT_ID IN (1 , 2, 3);


DELETE FROM PRODUCTS 
WHERE
    PRODUCT_ID = 3;
    
DELETE FROM products 
WHERE
    QUANTITY < 10;

DELETE FROM products LIMIT 10;


SELECT * FROM PRODUCTS ORDER BY QUANTITY, PRODUCT_ID;