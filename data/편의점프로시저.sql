-- 회원가입
insert into worker(id, pwd, name, payHour, isadmin) values('cjm', '1234', 'choi', 8350, default);


-- 로그인(출근)
DELIMITER $$
CREATE PROCEDURE login (
   in uid varchar(10),
    in upwd varchar(256),
    out result boolean
)
BEGIN
    IF (EXISTS (SELECT * FROM worker WHERE id = uid and pwd = upwd)) THEN 
      insert into workerlog(id) values(uid);
      set result = true;
   else
      set result = false;
   END if;
END$$
DELIMITER ;


-- 로그아웃(퇴근)
DELIMITER $$
create procedure logOut (
   IN uid varchar(10)
)
BEGIN
   declare curr_time datetime default current_timestamp(); -- 로그아웃 시간
    declare vpay int; -- 알바생 시급
    select max(payHour / 60) into vpay from worker;
    update workerlog set endWork = curr_time where id = uid; -- 로그아웃 시간 업데이트
	update workerlog set payDay = (vpay * TIMESTAMPDIFF(minute, startwork, curr_time)) where id = uid;
END$$
DELIMITER ;
call logout('cjm');


-- 장바구니 테이블에 들어가면서 재고 에서 빠져 나가는 프로시저
DELIMITER $$
create procedure incartOutstock (
	in upname nvarchar(20),
    in uquantity int(2),
    in uprice int(6),
    in upayno int(10),
    in upbcode nvarchar(9)
)
begin
   insert into cart(orderno,pname,quantity,pcost,pprice,payno,pbcode) values(default,upname,uquantity,(select pcost from products where pbcode = upbcode),uprice,upayno,upbcode);
    update stock set sCnt = sCnt - uquantity where sBcode = upbcode;
    
  end$$
  DELIMITER ; 


-- 재고 테이블과 상품 테이블 조인
select p.*, s.sCnt from products p
inner join stock s
on p.pbcode = s.sBCode; 