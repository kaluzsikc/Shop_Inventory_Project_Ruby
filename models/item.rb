require_relative("../db/sql_runner")

class Item

  attr_accessor :id, :name, :description, :cost_price, :sell_price, :quantity_in_stock, :manufacturer_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @cost_price = options['cost_price'].to_i
    @sell_price = options['sell_price'].to_i
    @quantity_in_stock = options['quantity_in_stock'].to_i
    @min_stock_level = options['min_stock_level'].to_i
    @max_stock_level = options['max_stock_level'].to_i
    @manufacturer_id = options['manufacturer_id'].to_i
  end

end
