require_relative("../db/sql_runner")

class Item

  attr_accessor :id, :name, :type, :description, :purchase_price, :sell_price, :quantity_in_stock, :manufacturer_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @description = options['description']
    @quantity_in_stock = options['quantity_in_stock'].to_i
    @purchase_price = options['purchase_price'].to_f
    @sell_price = options['sell_price'].to_f
    @manufacturer_id = options['manufacturer_id'].to_i
  end

  def save()
    sql = "INSERT INTO items
    (
      name, type, description, quantity_in_stock, purchase_price, sell_price
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6
    )
    RETURNING id"
    values = [@name, @type, @description, @quantity_in_stock, @purchase_price, @sell_price]
    item = SqlRunner.run( sql, values ).first
    @id = item['id'].to_i
  end

  def update()
    sql = "UPDATE items
    SET
    (
      name, type, description, quantity_in_stock, purchase_price, sell_price
    ) =
    (
      $1, $2, $3, $4, $5, $6
    )
    WHERE id = $7"
    values = [@name, @type, @description, @quantity_in_stock, @purchase_price, @sell_price, @id]
    SqlRunner.run( sql, values)
  end

  def self.all()
    sql = "SELECT * FROM items"
    product_list = SqlRunner.run(sql)
    products = product_list.map { |item| Item.new(item) }
    return products
  end

  def delete()
    sql = "DELETE FROM items
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
  sql = "DELETE FROM items"
  SqlRunner.run(sql)
  end

  # def self.level()
  #
  # end

  # def self.assign_manufacturer()
  #
  # end

  # def manufacturers()
  #
  # end

end
