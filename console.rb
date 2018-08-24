require_relative( 'models/item' )
require_relative( 'models/manufacturer' )

require( 'pry-byebug' )

# Item.delete_all()
# Manufacturer.delete_all()

item1 = Item.new ({"id" => 1,
          "manufacturer_id" => 20,
          "name" => "TV",
          "description" => "Smart TV",
          "cost_price" => 100.11,
          "sell_price" => 200,
          "quantity_in_stock" => 10,
          "min_stock_level" => 2,
          "max_stock_level" => 50 })
# item1.save


binding.pry
nil
