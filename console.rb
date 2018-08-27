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

item3 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item3.save

item4 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item4.save

item5 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item5.save

item6 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item6.save

item7 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item7.save

item8 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item8.save

item9 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item9.save

item6 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item6.save

item10 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => " ",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item10.save


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
