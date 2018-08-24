DROP TABLE items;
DROP TABLE manufacturers;


CREATE TABLE manufacturers(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  adress VARCHAR(255) NOT NULL,
  telephone INT4 NOT NULL
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
  manufacturer_id INT4 REFERENCES manufacturers(id) ON DELETE CASCADE
);
