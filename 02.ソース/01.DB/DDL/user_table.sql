CREATE TABLE suser (
 user_id varchar(6),
 password varchar(20),
 insert_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 update_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(user_id)
);

COMMENT ON TABLE suser IS 'ユーザマスタ';
COMMENT ON COLUMN suser.user_id IS 'ユーザＩＤ';
COMMENT ON COLUMN suser.password IS 'パスワード';
COMMENT ON COLUMN suser.insert_ymd IS 'レコード作成日';
COMMENT ON COLUMN suser.update_ymd IS 'レコード更新日';