CREATE TABLE suser (
 user_id varchar(6),
 password varchar(20),
 insert_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 update_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(user_id)
);

COMMENT ON TABLE suser IS '���[�U�}�X�^';
COMMENT ON COLUMN suser.user_id IS '���[�U�h�c';
COMMENT ON COLUMN suser.password IS '�p�X���[�h';
COMMENT ON COLUMN suser.insert_ymd IS '���R�[�h�쐬��';
COMMENT ON COLUMN suser.update_ymd IS '���R�[�h�X�V��';