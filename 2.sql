-- 2. 온라인 마켓 TABLE을 작성하라.

-- PRODUCT(상품) : 상품번호, 상품명, 상품가격, 상품설명

-- CONSUMER(소비자) : 소비자 ID, 이름, 나이

-- CART(장바구니) : 장바구니 번호, 소비자 ID, 구입일, 상품번호, 수량

-- 상품 테이블에 상품을 등록합니다(개수는 5가지이상).

-- 소비자를 등록합니다.

-- (10명이상)

-- 소비자가 쇼핑한 상품을 추가합니다.

-- 쇼핑한 상품을 출력합니다.

-- 소비자와 기간을 입력하면, 그 기간동안 구입한 물품이 출력됩니다.


CREATE TABLE PRODUCT (
		numProduct int not null auto_increment,
        nameProduct varchar(255),
        price int,
        descProduct varchar(255)        
);

CREATE TABLE CONSUMER (
		idConsumer varchar(255),
        nameConsumer varchar(255),
        age int
);

CREATE TABLE CART (
	numCart int not null auto_increment,
    idConsumer varchar(255),
    buyDate date,
    numProduct int,
    count int    
);

CREATE OR REPLACE VIEW customer_name_period
AS
SELECT co.customer_name, p.product_name, ca.purchase_date
FROM PRODUCT p, CONSUMER co, CART ca
WHERE p.product_number = ca.product_number AND co.customer_id = ca.customer_id;

SELECT * FROM customer_name_period WHERE purchase_date >= '2020.01.01'
AND purchase_date <= '2022.01.01'
AND customer_name = '수호';

insert into PRODUCT (nameProduct, price, descProduct) values ('상품a', 9000, '눈에조아요');
insert into PRODUCT (nameProduct, price, descProduct) values ('상품b', 8000, '피부에조아요');
insert into PRODUCT (nameProduct, price, descProduct) values ('상품c', 7000, '머리에조아요');
insert into PRODUCT (nameProduct, price, descProduct) values ('상품d', 6000, '체력에조아요');
insert into PRODUCT (nameProduct, price, descProduct) values ('상품e', 5000, '건강에조아요');

insert into CONSUMER (idConsumer, nameConsumer, age) values ('wnsgur', '양준혁', 29);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('tjddms', '이성은', 24);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('gPdnjs', '장혜원', 28);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('skdus', '권나연', 27);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('thfwl', '최솔지', 30);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('audwn', '오명주', 24);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('dmschd', '신은총', 29);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('dmswls', '김은진', 25);
insert into CONSUMER (idConsumer, nameConsumer, age) values ('dPdnjs', '천예원', 27);

insert into CART (idConsumer, buyDate, numProduct, count) values ('dPdnjs', 20220620, , 3);


