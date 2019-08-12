USE cu;

-- 직원 테이블
create table Worker (
	id nvarchar(10) primary key,
    pwd nvarchar(256),
    name nvarchar(5),
    payHour int(5),
    isAdmin nvarchar(1) default 'N'
);

-- 직원 출근 이력 테이블
create table WorkerLog (
	no int(8) primary key auto_increment,
	id nvarchar(10) references Worker(id),
	startWork datetime default current_timestamp,
	endWork datetime,
	payDay int(5)
);

-- 재고 테이블
create table stock (
	stockCode int(8) primary key auto_increment,
	sDate DATETIME NOT NULL,
	sCnt int(3) not null,
	sBCode nvarchar(9) references products(pbCode)
);

-- 폐기가능 제품 재고 테이블
create table disposalStock (
	FFUQBCode nvarchar(9) primary key,
	sDate datetime not null,
	sExpireDate datetime not null,
	sBCode nvarchar(9) references products(pbCode)
);

-- 폐기 테이블
create table disposal (
	dno int(8) auto_increment primary key,
	dCategory nvarchar(5) references category(category),
	dClass nvarchar(8) references category(class),
	dBCode nvarchar(9) references products(pbCode),
	dName nvarchar(20),
	dQuantity int(2),
	dCost int(6),
	dRegistDate datetime default current_timestamp,
	dTotPrice int(6)
);

-- 대분류 테이블
create table category (
	category nvarchar(5),
	categoryno int(2) not null,
	primary key(category, categoryno)
);
insert into category values('간편식사', 1);
insert into category values('즉석조리', 2);
insert into category values('과자류', 3);
insert into category values('아이스크림', 4);
insert into category values('식품', 5);
insert into category values('음료', 6);
insert into category values('생활용품', 7);


-- 중분류 테이블
create table class (
	class nvarchar(8),
	classno int(3) not null,
    categoryno int(2) not null references category(categoryno),
	primary key(class)
);
insert into class values('도시락', 1, 1);
insert into class values('샌드위치/햄버거', 2, 1);
insert into class values('주먹밥/김밥', 3, 1);
insert into class values('튀김류', 1, 2);
insert into class values('베이러리', 2, 2);
insert into class values('즉석커피', 3, 2);
insert into class values('스낵/비스켓', 1, 3);
insert into class values('빵/디저트', 2, 3);
insert into class values('껌/초콜릿/캔디', 3, 3);
insert into class values('아이스크림', 1, 4);
insert into class values('가공식사', 1, 5);
insert into class values('안주류', 2, 5);
insert into class values('식재료', 3, 5);
insert into class values('음료', 1, 6);
insert into class values('아이스드링크', 2, 6);
insert into class values('유제품', 3, 6);
insert into class values('취미/레저', 1, 7);
insert into class values('의약외품', 2, 7);
insert into class values('신변잡화', 3, 7);
insert into class values('생활잡화', 4, 7);


-- 상품 테이블
create table products (
	pbcode nvarchar(9),
	pname nvarchar(20) not null,
	pinfo nvarchar(200),
	pcost int(6) not null,
	pprice int(6) not null,
	pimg nvarchar(150),
	pagelimit nvarchar(1),
	category nvarchar(5),
	class nvarchar(8),
	primary key(pbcode),
	foreign key(category) references category(category),
	foreign key(class) references class(class)
);
-- 장바구니 테이블
create table cart (
	orderno int(10) primary key auto_increment,
	pname nvarchar(20) not null,
	quantity int(2),
	pcost int(6),
	pprice int(6),
	payno int(10),
	pbcode nvarchar(9) references products(pbcode)
);

-- 멤버십 테이블
create table telecomsale (
	telecom nvarchar(3) primary key,
	sale int(2)
);

-- 거래기록 테이블
create table paylog (
	paylogno int(6) primary key auto_increment,
	receivemoney int(6),
	paymoney int(6),
	changemoney int(6),
	billcategory nvarchar(1) not null check (billcategory in ('H','D','X')),
	telecom nvarchar(3) references telecomsale(telecom),
	cash int(6) default 0,
	cardno int(12),
	card int(6) default 0,
	paytime timestamp default current_timestamp,
	payno int(10)
);