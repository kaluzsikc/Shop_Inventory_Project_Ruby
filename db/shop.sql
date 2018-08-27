DROP TABLE items;
DROP TABLE manufacturers;


CREATE TABLE manufacturers(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  telephone INT
);

CREATE TABLE items(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  description TEXT,
  quantity_in_stock INT4 NOT NULL,
  purchase_price FLOAT NOT NULL,
  sell_price FLOAT NOT NULL,
  manufacturer_id INT4 REFERENCES manufacturers(id) ON DELETE CASCADE
);
