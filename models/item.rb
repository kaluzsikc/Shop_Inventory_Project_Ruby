require_relative("../db/sql_runner")

class Item

  attr_reader :id
  attr_accessor :manufacturer_id, :name, :type, :description, :purchase_price, :sell_price, :quantity_in_stock

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @manufacturer_id = options['manufacturer_id'].to_i
    @name = options['name']
    @type = options['type']
    @description = options['description']
    @quantity_in_stock = options['quantity_in_stock'].to_i
    @purchase_price = options['purchase_price'].to_f
    @sell_price = options['sell_price'].to_f
  end

  def save()
    sql = "INSERT INTO items
    (
      manufacturer_id, name, type, description, quantity_in_stock, purchase_price, sell_price
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6, $7
    )
    RETURNING id"
    values = [@manufacturer_id, @name, @type, @description, @quantity_in_stock, @purchase_price, @sell_price]
    item = SqlRunner.run( sql, values ).first
    @id = item['id'].to_i
  end

  def update()
    sql = "UPDATE items
    SET
    (
      manufacturer_id, name, type, description, quantity_in_stock, purchase_price, sell_price
    ) =
    (
      $1, $2, $3, $4, $5, $6, $7
    )
    WHERE id = $8"
    values = [@manufacturer_id, @name, @type, @description, @quantity_in_stock, @purchase_price, @sell_price, @id]
    SqlRunner.run( sql, values)
  end

  def self.find(id)
    sql = "SELECT * FROM items WHERE id = $1"
    values = [id]
    item = SqlRunner.run( sql, values)
    result = Item.new(item.first)
    return result
  end

  def self.all()
    sql = "SELECT * FROM items"
    product_list = SqlRunner.run(sql)
    products = product_list.map { |item| Item.new(item) }
    return products
  end

  def level()
    if @quantity_in_stock < 10
      "Low"
    elsif @quantity_in_stock >50
      "High"
    else
      "Medium"
    end
  end

  def delete()
    sql = "DELETE FROM items
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def delete_by_id(id)
    sql = "DELETE * FROM items WHERE id = $1"
    values = ['id']
    SqlRunner.run( sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM items"
    SqlRunner.run(sql)
  end

  def markup()

((((@sell_price - @purchase_price) - 1)/@purchase_price)*100).round
  end

  # def self.assign_manufacturer()
  #
  # end

  # def manufacturers()
  #
  # end

end
