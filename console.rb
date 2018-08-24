require_relative( 'models/item' )
require_relative( 'models/manufacturer' )

require( 'pry-byebug' )

# Item.delete_all()
# Manufacturer.delete_all()

item1 = Item.new ({"id" => 1,
          "manufacturer_id" => 20,
          "name" => "Samsung WEDZ900",
          "type" => "Smart TV",
          "description" => " ",
          "purchase_price" => 100.11,
          "sell_price" => 200,
          "quantity_in_stock" => 10 })
# item1.save


binding.pry
nil
