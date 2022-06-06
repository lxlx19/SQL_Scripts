DESC ECOMM_STORE.PRODUCTS_1;

SELECT 
    *
FROM
    ECOMM_STORE.PRODUCTS_1;

INSERT INTO `ECOMM_STORE`.`PRODUCTS_1` (
	`PRODUCT_NAME`,
    `PRODUCT_TYPE`,
    `PRICE`,
    `QUANTITY`
) VALUES (
	'Deep Work', 'Book', 14.99, 100
);

INSERT INTO `ECOMM_STORE`.`PRODUCTS_1` (
	`PRODUCT_ID`,
	`PRODUCT_NAME`,
    `PRODUCT_TYPE`,
    `PRICE`,
    `QUANTITY`
) VALUES (
	2, 'Digital MInimalism', 'Book', 18.99, 150
);

COMMIT;

INSERT INTO `ECOMM_STORE`.`PRODUCTS_1` (
	`PRODUCT_ID`,
	`PRODUCT_NAME`,
    `PRODUCT_TYPE`,
    `PRICE`,
    `QUANTITY`
) VALUES (
	10, 'Art Of Possibilities', 'Book', 10.99, 50
);

INSERT INTO `ECOMM_STORE`.`PRODUCTS_1` (
	`PRODUCT_NAME`,
    `PRODUCT_TYPE`,
    `PRICE`,
    `QUANTITY`
) VALUES (
	'Mind at its Home', 'Book', 12.99, 100
);

INSERT INTO `ECOMM_STORE`.`PRODUCTS_1`
SELECT `PRODUCT_3`.`PRODUCT_ID`,
	`PRODUCT_3`.`PRODUCT_NAME`,
	`PRODUCT_3`.`PRODUCT_TYPE`,
    `PRODUCT_3`.`PRICE`,
    `PRODUCT_3`.`QUANTITY`
FROM `ECOMM_STORE`.`PRODUCTS_3`;

COMMIT;
    