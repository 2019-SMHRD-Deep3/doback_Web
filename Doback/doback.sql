drop table member;
create table member(
	id varchar2(20),
	pw varchar2(20),
	email varchar2(20),
	phone varchar2(20)
)
insert into member values('test', '0000', 'test@naver.com', '010-0000-0000');
select * from member

delete from member where id = 'aaa';