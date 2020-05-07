DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE YNDEDUCATION CASCADE CONSTRAINTS;
DROP TABLE YNDEDUHISTORY CASCADE CONSTRAINTS;
DROP TABLE YNDRECORD CASCADE CONSTRAINTS;
DROP TABLE YNDWORD CASCADE CONSTRAINTS;
DROP TABLE YNDvoca CASCADE CONSTRAINTS;

DROP SEQUENCE ID_SEQ
DROP SEQUENCE EDU_SEQ
DROP SEQUENCE HIS_SEQ
DROP SEQUENCE REC_SEQ
DROP SEQUENCE WOR_SEQ
DROP SEQUENCE voc_SEQ

CREATE SEQUENCE ID_SEQ START WITH 1 INCREMENT BY 1
CREATE SEQUENCE EDU_SEQ START WITH 1 INCREMENT BY 1
CREATE SEQUENCE HIS_SEQ START WITH 1 INCREMENT BY 1
CREATE SEQUENCE REC_SEQ START WITH 1 INCREMENT BY 1
CREATE SEQUENCE WOR_SEQ START WITH 1 INCREMENT BY 1
CREATE SEQUENCE voc_SEQ START WITH 1 INCREMENT BY 1


CREATE TABLE MEMBER(
	IDNUM NUMBER NOT NULL,
	ID VARCHAR2(200) NOT NULL,
	PW VARCHAR2(200) NOT NULL,
	EMAIL VARCHAR2(200) NOT NULL,
	TEL VARCHAR2(200) NOT NULL,
	GENDER VARCHAR2(200) NOT NULL,
	CONSTRAINT MEMBER_PK123 PRIMARY KEY (IDNUM)
	)
	
CREATE TABLE YNDvoca(
	vocaNUM NUMBER NOT NULL,
	voca VARCHAR2(1000 BYTE) NOT NULL,
    CONSTRAINT YNDvoca_PK PRIMARY KEY (vocaNUM)
    )
    
CREATE TABLE YNDRECORD(
	RECORDNUM NUMBER NOT NULL,
	RECORD VARCHAR2(1000 BYTE) NOT NULL,
	vocaNUM NUMBER NOT NULL,
	RECORDDATE DATE NOT NULL,
	idnum number not null,
    CONSTRAINT YNDRECORD_PK PRIMARY KEY (RECORDNUM),
    CONSTRAINT YNDRECORD_FK23 FOREIGN KEY (vocaNUM) REFERENCES YNDvoca (vocaNUM),
    constraint YNDRECORD_FK22 foreign key (idnum) references member (idnum)
   )
   
CREATE TABLE YNDEDUCATION(
	EDUNUM NUMBER NOT NULL,
	WORD1 NUMBER NOT NULL,
	WORD2 NUMBER NOT NULL,
	wORD3 NUMBER NOT NULL,
	SENTENCE1 NUMBER NOT NULL,
	SENTENCE2 NUMBER NOT NULL,
	ALLSIM NUMBER NOT NULL,
	UK NUMBER NOT NULL,
	US NUMBER NOT NULL,
	IDNUM number NOT NULL,
	RECORDNUM NUMBER NOT NULL,
    CONSTRAINT YNDEDUCATION_PK PRIMARY KEY (EDUNUM),
    CONSTRAINT YNDEDUCATION_FK5 FOREIGN KEY (RECORDNUM) REFERENCES YNDRECORD (RECORDNUM),
    constraint YNDEDUCATION_fk8 foreign key (IDNUM) references member (IDNUM)
    )
    

    
CREATE TABLE YNDWORD(
	WORDNUM NUMBER NOT NULL,
	WORD VARCHAR2(1000 BYTE) NOT NULL,
	EDUNUM NUMBER NOT NULL,
	CONSTRAINT YNDWORD_PK PRIMARY KEY (WORDNUM),
	CONSTRAINT YNDWORD_FK1 FOREIGN KEY (EDUNUM) REFERENCES YNDEDUCATION (EDUNUM)
	) 
    
    
CREATE TABLE YNDEDUHISTORY(
	HISTORYNUM NUMBER NOT NULL,
	EDUNUM NUMBER NOT NULL,
	CONSTRAINT YNDEDUHISTORY_PK PRIMARY KEY (HISTORYNUM),
	CONSTRAINT YNDEDUHISTORY_FK2 FOREIGN KEY (EDUNUM) REFERENCES YNDEDUCATION (EDUNUM)
	)
	
INSERT INTO YNDVOCA VALUES (VOC_SEQ.nextval,'sick')
INSERT INTO YNDVOCA VALUES (VOC_SEQ.nextval,'thick')
INSERT INTO YNDVOCA VALUES (VOC_SEQ.nextval,'chic')
INSERT INTO YNDVOCA VALUES (VOC_SEQ.nextval,'she wears thick and chic shoes eventhough she is sick')
INSERT INTO YNDVOCA VALUES (VOC_SEQ.nextval,'i can see many trees thick with leaves around the park')

insert into yndrecord values (999,'sick',1,sysdate,1)

delete from YNDVOCA;

SELECT * FROM MEMBER
SELECT * FROM YNDEDUCATION
SELECT * FROM YNDEDUHISTORY
SELECT * FROM YNDRECORD
SELECT * FROM YNDWORD
SELECT * FROM YNDvoca

