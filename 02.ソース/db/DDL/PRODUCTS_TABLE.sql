DROP TABLE PRODUCTS;
CREATE TABLE PRODUCTS (
 product_id SERIAL,
 product_name varchar(200) NOT NULL,
 product_details varchar(400),
 product_price integer NOT NULL,
 insert_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 update_ymd timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(product_id)
);

COMMENT ON TABLE PRODUCTS IS '���i�}�X�^';
COMMENT ON COLUMN PRODUCTS.product_id IS '���iID';
COMMENT ON COLUMN PRODUCTS.product_name IS '���i��';
COMMENT ON COLUMN PRODUCTS.product_details IS '���i�ڍ�';
COMMENT ON COLUMN PRODUCTS.product_price IS '���i���i';
COMMENT ON COLUMN PRODUCTS.insert_ymd IS '���R�[�h�쐬��';
COMMENT ON COLUMN PRODUCTS.update_ymd IS '���R�[�h�X�V��';

CREATE TRIGGER update_ymd BEFORE UPDATE ON PRODUCTS FOR EACH ROW
  EXECUTE PROCEDURE set_update_time();