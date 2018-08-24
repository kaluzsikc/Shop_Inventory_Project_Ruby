DROP TABLE manufacturers;
DROP TABLE items;


CREATE TABLE manufacturers(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  adress VARCHAR(255) NOT NULL,
  telephone INT4 NOT NULL,
  item_id REFERENCES items(id) ON DELETE CASCADE
);

CREATE TABLE items(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  cost_price FLOAT NOT NULL,
  sell_price FLOAT NOT NULL,
  quantity_in_stock INT4 NOT NULL,
  min_stock_level INT4 NOT NULL,
  max_stock_level INT4 NOT NULL,
  manufacturers_id INT4 REFERENCES manufacturers(id) ON DELETE CASCADE,
);
