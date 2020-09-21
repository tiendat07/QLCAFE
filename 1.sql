CALL countCategory(@c);
SELECT @c;

CALL getCateById(2);

INSERT INTO category(name) VALUES('ĐIỆN THOẠI');
INSERT INTO category(name) VALUES('MÁY TÍNH BẢNG');
INSERT INTO category(name) VALUES('LAPTOP');

INSERT INTO product(name, description, price, category_id) VALUES ('iPhone X', '64GB, Apple', 16, 1);
INSERT INTO product(name, description, price, category_id) VALUES ('iPhone XS', '64GB, Apple', 22, 1);
INSERT INTO product(name, description, price, category_id) VALUES ('iPhone 11 Promax', '64GB, Apple', 31, 1);
INSERT INTO product(name, description, price, category_id) VALUES ('iPad', '64GB, Apple', 20, 2);
INSERT INTO product(name, description, price, category_id) VALUES ('SamSung Tab', '64GB, SamSung', 14, 2);

SELECT * FROM category;
SELECT * FROM product;

SELECT C.name, count(P.id), avg(P.price)
FROM category C LEFT OUTER JOIN product P ON C.id = P.category_id
GROUP BY C.name;