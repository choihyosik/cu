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
	no int(8) primary key,
	id nvarchar(10) references Worker(id),
	startWork date,
	endWork date,
	payDay int(5)
);

-- 재고 테이블
create table stock (
	stockCode int(8) primary key,
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

-- 카테고리 테이블
create table category (
	category nvarchar(5),
	class nvarchar(8),
	primary key(category,class)
);

-- 상품 테이블
create table products (
	pbcode nvarchar(9),
	pname nvarchar(20) not null,
	pinfo nvarchar(50),
	pcost int(6) not null,
	pprice int(6) not null,
	pimg nvarchar(50),
	pagelimit nvarchar(1),
	category nvarchar(5),
	class nvarchar(8),
	primary key(pbcode),
	foreign key(category,class) references category(category,class)
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