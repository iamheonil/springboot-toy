DROP TABLE TB_USER;
DROP TABLE TB_BOARD_CONTENT;

CREATE TABLE TB_USER(
    USER_NO VARCHAR2(20 BYTE) NOT NULL ENABLE,
    USER_ID VARCHAR2(30 BYTE) NOT NULL ENABLE,
    USER_PWD VARCHAR2(100 BYTE) NOT NULL ENABLE,
    USER_NM VARCHAR2(30 BYTE) NOT NULL ENABLE,
    EMAIL VARCHAR2(30 BYTE),
    USER_DROP_YN VARCHAR2(3 BYTE) DEFAULT 'N',
    CDATE VARCHAR2(30 BYTE)
);

COMMENT ON COLUMN "TB_USER"."USER_NO" IS '사용자_번호';
COMMENT ON COLUMN "TB_USER"."USER_ID" IS '사용자_아이디';
COMMENT ON COLUMN "TB_USER"."USER_PWD" IS '사용자_비밀번호';
COMMENT ON COLUMN "TB_USER"."USER_NM" IS '사용자_이름';
COMMENT ON COLUMN "TB_USER"."EMAIL" IS '이메일주소';
COMMENT ON COLUMN "TB_USER"."USER_DROP_YN" IS '계정상태';
COMMENT ON COLUMN "TB_USER"."CDATE" IS '생성시각';

CREATE TABLE TB_BOARD_CONTENT(
    CONTENT_NO VARCHAR2(20 BYTE) NOT NULL ENABLE,
    CONTENT_NAME VARCHAR2(200 BYTE) NOT NULL ENABLE,
    CONTENTS VARCHAR2(2000 BYTE) NOT NULL ENABLE,
    USER_NO VARCHAR2(30 BYTE) NOT NULL ENABLE,
    DEL_YN VARCHAR2(3 BYTE) DEFAULT 'N',
    CDATE VARCHAR2(30 BYTE),
    UDATE VARCHAR2(30 BYTE)
);

COMMENT ON COLUMN "TB_BOARD_CONTENT"."CONTENT_NO" IS '게시물_번호';
COMMENT ON COLUMN "TB_BOARD_CONTENT"."CONTENT_NAME" IS '게시물_제목';
COMMENT ON COLUMN "TB_BOARD_CONTENT"."CONTENTS" IS '게시물_내용';
COMMENT ON COLUMN "TB_BOARD_CONTENT"."USER_NO" IS '게시물_작성자';
COMMENT ON COLUMN "TB_BOARD_CONTENT"."DEL_YN" IS '게시물_삭제여부';
COMMENT ON COLUMN "TB_BOARD_CONTENT"."CDATE" IS '작성시각';
COMMENT ON COLUMN "TB_BOARD_CONTENT"."UDATE" IS '업데이트시각';