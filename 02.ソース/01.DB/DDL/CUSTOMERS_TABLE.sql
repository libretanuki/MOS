DROP TABLE CUSTOMERS;
CREATE TABLE CUSTOMERS (
 customer_id SERIAL,
 customer_name varchar(100) NOT NULL, 
 password varchar(20) NOT NULL,
 premium_flg char(1) NOT NULL DEFAULT '0',
 insert_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 update_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(customer_id)
);

COMMENT ON TABLE CUSTOMERS IS '�ڋq�}�X�^';
COMMENT ON COLUMN CUSTOMERS.customer_id IS '�ڋqID';
COMMENT ON COLUMN CUSTOMERS.customer_name IS '�ڋq��';
COMMENT ON COLUMN CUSTOMERS.password IS '�p�X���[�h';
COMMENT ON COLUMN CUSTOMERS.premium_flg IS '�v���~�A������t���O';
COMMENT ON COLUMN CUSTOMERS.insert_ymd IS '���R�[�h�쐬��';
COMMENT ON COLUMN CUSTOMERS.update_ymd IS '���R�[�h�X�V��';

CREATE TRIGGER update_ymd BEFORE UPDATE ON CUSTOMERS FOR EACH ROW
  EXECUTE PROCEDURE set_update_time();