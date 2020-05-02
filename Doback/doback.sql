DROP TABLE member;
DROP SEQUENCE id_seq;
CREATE SEQUENCE id_seq START WITH 1 INCREMENT BY 1 MAXVALUE 1000 NOCYCLE;
CREATE TABLE member(
	idnum number CONSTRAINT member_pk_id PRIMARY KEY,
	id varchar2(20) CONSTRAINT member_nn_id NOT NULL CONSTRAINT member_uk_id UNIQUE,
	pw varchar2(20) CONSTRAINT member_nn_pw NOT NULL,
	email varchar2(20) CONSTRAINT member_nn_email NOT NULL,
	phone varchar2(20) CONSTRAINT member_nn_phone NOT NULL
)
INSERT INTO member VALUES(id_seq.nextval, 'test', '0000', 'test@naver.com', '010-0000-0000');
DELETE FROM member;
SELECT * FROM member
