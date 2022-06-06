DESC ECOMM_STORE.PRODUCTS;

ALTER TABLE `ecomm_store`.`products` 
ADD COLUMN `Quantity` INT NOT NULL AFTER `PRICE`;

ALTER TABLE `ecomm_store`.`products` 
CHANGE COLUMN `Quantity` `QUANTITY` INT NOT NULL ;

SELECT 
    *
FROM
    ECOMM_STORE.PRODUCTS;

INSERT INTO `ECOMM_STORE`.`PRODUCTS` (
	`PRODUCT_ID`,
	`PRODUCT_NAME`,
    `PRODUCT_TYPE`,
    `PRICE`,
    `QUANTITY`
) VALUES (
	1, 'The Common Path to Uncommon Sucess', 'Book', 16.99, 299
),(
	2, 'Tiny Habits', 'Book', 20.39, 249
);


COMMIT;
