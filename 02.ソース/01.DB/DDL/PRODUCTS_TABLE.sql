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

COMMENT ON TABLE PRODUCTS IS '商品マスタ';
COMMENT ON COLUMN PRODUCTS.product_id IS '商品ID';
COMMENT ON COLUMN PRODUCTS.product_name IS '商品名';
COMMENT ON COLUMN PRODUCTS.product_details IS '商品詳細';
COMMENT ON COLUMN PRODUCTS.product_price IS '商品価格';
COMMENT ON COLUMN PRODUCTS.insert_ymd IS 'レコード作成日';
COMMENT ON COLUMN PRODUCTS.update_ymd IS 'レコード更新日';

CREATE TRIGGER update_ymd BEFORE UPDATE ON PRODUCTS FOR EACH ROW
  EXECUTE PROCEDURE set_update_time();