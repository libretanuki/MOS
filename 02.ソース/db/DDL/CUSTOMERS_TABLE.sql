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

COMMENT ON TABLE CUSTOMERS IS '顧客マスタ';
COMMENT ON COLUMN CUSTOMERS.customer_id IS '顧客ID';
COMMENT ON COLUMN CUSTOMERS.customer_name IS '顧客名';
COMMENT ON COLUMN CUSTOMERS.password IS 'パスワード';
COMMENT ON COLUMN CUSTOMERS.premium_flg IS 'プレミアム会員フラグ';
COMMENT ON COLUMN CUSTOMERS.insert_ymd IS 'レコード作成日';
COMMENT ON COLUMN CUSTOMERS.update_ymd IS 'レコード更新日';

CREATE TRIGGER update_ymd BEFORE UPDATE ON CUSTOMERS FOR EACH ROW
  EXECUTE PROCEDURE set_update_time();