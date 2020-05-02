drop table member
DROP SEQUENCE id_seq;

create table member(idnum number, id varchar2(200),pw varchar2(200),email varchar2(200),tel varchar2(200),gender varchar2(20))
create sequence id_seq start with 1 increment by 1
select * from MEMBER