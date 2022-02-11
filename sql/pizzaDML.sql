--client insert 주문자 저장 (손님사장구분번호, id, pw, 이름, 닉네임, 연락처, 주소)
insert into client values(0, 'admin', 'admin', '김사장', '피자사장', '010-1111-2222', '서울시 K PIZZA가게');
insert into client values(1, 'yeji_k', 'yeji0909', '김예지', '피자lover', '010-0909-0909', '서울시 송파구');
insert into client values(1, 'hyeono', 'son1234', '손현오', '피자한입만', '010-1234-5678', '서울시 강남구');
insert into client values(1, 'cheol_jun', 'ban11', '반철준', '배고파', '010-1122-3344', '서울시 용산구');
insert into client values(1, 'you_jini', '12345', '이유진', '유지니', '010-1234-1234', '서울시 관악구');
insert into client values(1, 'minimini', '0987', '박정민', '뭘로하지', '010-3453-1211', '서울시 동대문구');
insert into client values(1, 'id', '1234', '김혜지', '닉네임','010-1211-1211', '서울시 중구');

--menu insert 메뉴 저장 (음식id, 음식이름, 종류, 사이즈, 가격)
insert into menu values('pizza1', 'k pizza', 'pizza', 'R', 18000);
insert into menu values('pizza2', 'k pizza', 'pizza', 'M', 20000);
insert into menu values('pizza3', 'k pizza', 'pizza', 'L', 22000);
insert into menu values('pizza4', '불고기 pizza', 'pizza', 'R', 20000);
insert into menu values('pizza5', '불고기 pizza', 'pizza', 'M', 22000);
insert into menu values('pizza6', '불고기 pizza', 'pizza', 'L', 24000);
insert into menu values('pizza7', 'hot chicken pizza', 'pizza', 'R', 20000);
insert into menu values('pizza8', 'hot chicken pizza', 'pizza', 'M', 22000);
insert into menu values('pizza9', 'hot chicken pizza', 'pizza', 'L', 24000);
insert into menu values('pizza10', '갈비 pizza', 'pizza', 'M', 22000);
insert into menu values('pizza11', 'K 세트', 'pizza', 'M', 20000);
insert into menu values('pizza12', '반반 세트', 'pizza', 'M', 20000);

--추가주문으로만 가능한 음식
insert into menu values('drink1', '콜라', 'drink', 'M', 2000);
insert into menu values('drink2', '콜라', 'drink', 'L', 3000);
insert into menu values('drink3', '사이다', 'drink', 'M', 2000);
insert into menu values('drink4', '사이다', 'drink', 'L', 3000);
insert into menu values('side1', '갈릭소스', 'side', 'null', 2000);
insert into menu values('side2', '핫소스', 'side', 'null', 2000);


--order list 주문 내역 (시퀀스, 주문이름, 손님id, 피자id, 수량, 추가주문음식id, 수량, 총가격, 추가메세지)
insert into order_list values(order_list_id_seq.nextval, '주문1', 'yeji_k', 'pizza12', 1, 'side1', 2, 20000*1+2000*2, '문 앞에 놓아주세요');
insert into order_list values(order_list_id_seq.nextval, '주문2', 'you_jini', 'pizza7', 1, 'drink2', 1, 20000*1+3000*1, ' ');
insert into order_list values(order_list_id_seq.nextval, '주문3', 'sonhyeono', 'pizza11', 1, 'side2', 1, 20000+2000, '벨X');
insert into order_list values(order_list_id_seq.nextval, '주문4', 'minimini', 'pizza5', 1, 'drink3', 2, 22000+2000*2, '빨리 와주세요');
insert into order_list values(order_list_id_seq.nextval, '주문5', 'cheol_jun', 'pizza1', 1, 'side1', 2, 18000+2000*2, ' ');


commit;

