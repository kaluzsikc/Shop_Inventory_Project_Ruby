require_relative( 'models/item' )
require_relative( 'models/manufacturer' )

require( 'pry-byebug' )

Item.delete_all()
Manufacturer.delete_all()

item1 = Item.new ({"id" => 1,
          "manufacturer_id" => 20,
          "name" => "Samsung WEDZ900",
          "type" => "Smart TV",
          "description" => " ",
          "purchase_price" => 100.11,
          "sell_price" => 200,
          "quantity_in_stock" => 10 })
item1.save

item2 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item2.save


manufacturer1= Manufacturer.new ({"id" =>10,
              "name" => "LG",
              "address" => "123 Lothian Road, Edinburgh, UK",
              "telephone" => "123456789"})
manufacturer1.save

manufacturer2= Manufacturer.new ({"id" =>20,
              "name" => "Samsung",
              "address" => "6 Colinton Road, Glasgow, UK",
              "telephone" => "223543"})
manufacturer2.save

binding.pry
nil
