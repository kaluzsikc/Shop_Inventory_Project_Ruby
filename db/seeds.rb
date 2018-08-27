require_relative( '../models/item' )
require_relative( '../models/manufacturer' )

require( 'pry-byebug' )

Item.delete_all()
Manufacturer.delete_all()

item1 = Item.new ({"id" => 1,
          "manufacturer_id" => 20,
          "name" => "Samsung WEDZ900",
          "type" => "Smart TV",
          "description" => "... add description here ...",
          "purchase_price" => 100.11,
          "sell_price" => 200,
          "quantity_in_stock" => 10 })
item1.save

item2 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG AAS900",
          "type" => "Android TV",
          "description" => "... add description here ...",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item2.save

item3 = Item.new ({"id" => 3,
          "manufacturer_id" => 50,
          "name" => "iPhone 6",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 200,
          "sell_price" => 600,
          "quantity_in_stock" => 20 })
item3.save

item4 = Item.new ({"id" => 4,
          "manufacturer_id" => 50,
          "name" => "iPhone 8",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 300,
          "sell_price" => 800,
          "quantity_in_stock" => 3 })
item4.save

item5 = Item.new ({"id" => 5,
          "manufacturer_id" => 20,
          "name" => "Samsung Mp600",
          "type" => "Mp3 Player",
          "description" => "... add description here ...",
          "purchase_price" => 20,
          "sell_price" => 80,
          "quantity_in_stock" => 50 })
item5.save

item6 = Item.new ({"id" => 6,
          "manufacturer_id" => 20,
          "name" => "Samsung S9",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 200,
          "sell_price" => 700,
          "quantity_in_stock" => 15 })
item6.save

item7 = Item.new ({"id" => 7,
          "manufacturer_id" => 20,
          "name" => "Samasung S67",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 150,
          "sell_price" => 450,
          "quantity_in_stock" => 9 })
item7.save

item8 = Item.new ({"id" => 8,
          "manufacturer_id" => 20,
          "name" => "Samsung S3560 32GB",
          "type" => "Memory Card",
          "description" => "... add description here ...",
          "purchase_price" => 10,
          "sell_price" => 40,
          "quantity_in_stock" => 100 })
item8.save

item9 = Item.new ({"id" => 9,
          "manufacturer_id" => 10,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => "... add description here ...",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item9.save

item10 = Item.new ({"id" => 10,
          "manufacturer_id" => 70,
          "name" => "AKG k72",
          "type" => "Headphones",
          "description" => "... add description here ...",
          "purchase_price" => 25,
          "sell_price" => 80,
          "quantity_in_stock" => 15 })
item10.save

item11 = Item.new ({"id" => 11,
          "manufacturer_id" => 111,
          "name" => "JVC QW345",
          "type" => "Headphones",
          "description" => "... add description here ...",
          "purchase_price" => 20,
          "sell_price" => 50,
          "quantity_in_stock" => 5 })
item11.save

item12 = Item.new ({"id" => 1,
          "manufacturer_id" => 20,
          "name" => "Samsung WEDZ600",
          "type" => "Android TV",
          "description" => "... add description here ...",
          "purchase_price" => 90,
          "sell_price" => 300,
          "quantity_in_stock" => 20 })
item12.save

item13 = Item.new ({"id" => 2,
          "manufacturer_id" => 10,
          "name" => "LG ABX800",
          "type" => "Smart TV",
          "description" => "... add description here ...",
          "purchase_price" => 200,
          "sell_price" => 1200,
          "quantity_in_stock" => 5 })
item13.save
# binding.pry

manufacturer1= Manufacturer.new ({"id" =>10,
              "name" => "LG",
              "address" => "Seoul, South Korea",
              "telephone" => "3448475454"})
manufacturer1.save

manufacturer2= Manufacturer.new ({"id" =>20,
              "name" => "Samsung",
              "address" => "Seoul, South Korea",
              "telephone" => "3307267864"})
manufacturer2.save

manufacturer3= Manufacturer.new ({"id" =>30,
              "name" => "Sony",
              "address" => "Tokyo,Japan",
              "telephone" => "2073652810"})
manufacturer3.save

manufacturer4= Manufacturer.new ({"id" =>40,
              "name" => "Panasonic",
              "address" => "Osaka, Japan",
              "telephone" => "3448443899"})
manufacturer4.save

manufacturer5= Manufacturer.new ({"id" =>50,
              "name" => "Apple",
              "address" => "California, USA",
              "telephone" => "8000480408"})
manufacturer5.save

manufacturer6= Manufacturer.new ({"id" =>60,
              "name" => "Nokia",
              "address" => "Helsinki, Finland",
              "telephone" => "2076600896"})
manufacturer6.save

manufacturer7= Manufacturer.new ({"id" =>70,
              "name" => "AKG",
              "address" => "Vienna, Austria",
              "telephone" => "4367683200888"})
manufacturer7.save

manufacturer8= Manufacturer.new ({"id" =>80,
              "name" => "Philips",
              "address" => "Amsterdam, Netherlands",
              "telephone" => "2079490240"})
manufacturer8.save

manufacturer9= Manufacturer.new ({"id" =>90,
              "name" => "Dyson",
              "address" => "Milton Keynes, UK",
              "telephone" => "8002980298"})
manufacturer9.save

manufacturer10= Manufacturer.new ({"id" =>100,
              "name" => "Bose",
              "address" => "Massachusetts, USA",
              "telephone" => "3333000112"})
manufacturer10.save

manufacturer11= Manufacturer.new ({"id" =>111,
              "name" => "JVC",
              "address" => "Yokohama, Japan",
              "telephone" => "3453108000"})
manufacturer11.save

binding.pry
nil
