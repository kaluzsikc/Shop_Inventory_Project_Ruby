require_relative( '../models/manufacturer' )
require_relative( '../models/item' )

require( 'pry-byebug' )

Manufacturer.delete_all()
Item.delete_all()

manufacturer1= Manufacturer.new({
              "name" => "LG",
              "address" => "Seoul, South Korea",
              "telephone" => "3448475454"})
manufacturer1.save

manufacturer2= Manufacturer.new({
              "name" => "Samsung",
              "address" => "Seoul, South Korea",
              "telephone" => "3307267864"})
manufacturer2.save

manufacturer3= Manufacturer.new({
              "name" => "Sony",
              "address" => "Tokyo,Japan",
              "telephone" => "2073652810"})
manufacturer3.save

manufacturer4= Manufacturer.new({
              "name" => "Panasonic",
              "address" => "Osaka, Japan",
              "telephone" => "3448443899"})
manufacturer4.save

manufacturer5= Manufacturer.new({
              "name" => "Apple",
              "address" => "California, USA",
              "telephone" => "8000480408"})
manufacturer5.save

manufacturer6= Manufacturer.new({
              "name" => "Nokia",
              "address" => "Helsinki, Finland",
              "telephone" => "2076600896"})
manufacturer6.save

manufacturer7= Manufacturer.new({
              "name" => "AKG",
              "address" => "Vienna, Austria",
              "telephone" => "4367683200888"})
manufacturer7.save

manufacturer8= Manufacturer.new({
              "name" => "Philips",
              "address" => "Amsterdam, Netherlands",
              "telephone" => "2079490240"})
manufacturer8.save

manufacturer9= Manufacturer.new({
              "name" => "Dyson",
              "address" => "Milton Keynes, UK",
              "telephone" => "8002980298"})
manufacturer9.save

manufacturer10= Manufacturer.new({
              "name" => "Bose",
              "address" => "Massachusetts, USA",
              "telephone" => "3333000112"})
manufacturer10.save

manufacturer11= Manufacturer.new({
              "name" => "JVC",
              "address" => "Yokohama, Japan",
              "telephone" => "3453108000"})
manufacturer11.save


item1 = Item.new ({
          "manufacturer_id" => manufacturer2.id,
          "name" => "Samsung WEDZ900",
          "type" => "Smart TV",
          "description" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vestibulum dignissim egestas. Praesent vestibulum lacus nisl, et pharetra augue elementum eu. Donec congue leo eget molestie egestas. Nam eu lectus odio. Aliquam sed placerat ligula. Cras dolor tellus, ornare in accumsan et, interdum a quam. Fusce blandit facilisis blandit. Nulla facilisi. Sed imperdiet dui in magna cursus iaculis. Duis tincidunt vitae tellus vitae aliquam. Etiam finibus, urna in tempor commodo, mi tortor placerat felis, vel aliquam ante urna commodo libero.",
          "purchase_price" => 100.11,
          "sell_price" => 200,
          "quantity_in_stock" => 10 })
item1.save

item2 = Item.new ({
          "manufacturer_id" => manufacturer1.id,
          "name" => "LG AAS900",
          "type" => "Android TV",
          "description" => "... add description here ...",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item2.save

item3 = Item.new ({
          "manufacturer_id" => manufacturer5.id,
          "name" => "iPhone 6",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 200,
          "sell_price" => 600,
          "quantity_in_stock" => 20 })
item3.save

item4 = Item.new ({
          "manufacturer_id" => manufacturer5.id,
          "name" => "iPhone 8",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 300,
          "sell_price" => 800,
          "quantity_in_stock" => 3 })
item4.save

item5 = Item.new ({
          "manufacturer_id" => manufacturer2.id,
          "name" => "Samsung Mp600",
          "type" => "Mp3 Player",
          "description" => "... add description here ...",
          "purchase_price" => 20,
          "sell_price" => 80,
          "quantity_in_stock" => 50 })
item5.save

item6 = Item.new ({
          "manufacturer_id" => manufacturer2.id,
          "name" => "Samsung S9",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 200,
          "sell_price" => 700,
          "quantity_in_stock" => 15 })
item6.save

item7 = Item.new ({
          "manufacturer_id" => manufacturer2.id,
          "name" => "Samasung S67",
          "type" => "Phone",
          "description" => "... add description here ...",
          "purchase_price" => 150,
          "sell_price" => 450,
          "quantity_in_stock" => 9 })
item7.save

item8 = Item.new ({
          "manufacturer_id" => manufacturer2.id,
          "name" => "Samsung S3560 32GB",
          "type" => "Memory Card",
          "description" => "... add description here ...",
          "purchase_price" => 10,
          "sell_price" => 40,
          "quantity_in_stock" => 100 })
item8.save

item9 = Item.new ({
          "manufacturer_id" => manufacturer1.id,
          "name" => "LG WEDZ900",
          "type" => "Android TV",
          "description" => "... add description here ...",
          "purchase_price" => 99.99,
          "sell_price" => 150,
          "quantity_in_stock" => 5 })
item9.save

item10 = Item.new ({
          "manufacturer_id" => manufacturer7.id,
          "name" => "AKG k72",
          "type" => "Headphones",
          "description" => "... add description here ...",
          "purchase_price" => 25,
          "sell_price" => 80,
          "quantity_in_stock" => 15 })
item10.save

item11 = Item.new ({
          "manufacturer_id" => manufacturer11.id,
          "name" => "JVC QW345",
          "type" => "Headphones",
          "description" => "... add description here ...",
          "purchase_price" => 20,
          "sell_price" => 50,
          "quantity_in_stock" => 5 })
item11.save

item12 = Item.new ({
          "manufacturer_id" => manufacturer2.id,
          "name" => "Samsung WEDZ600",
          "type" => "Android TV",
          "description" => "... add description here ...",
          "purchase_price" => 90,
          "sell_price" => 300,
          "quantity_in_stock" => 20 })
item12.save

item13 = Item.new ({
          "manufacturer_id" => manufacturer1.id,
          "name" => "LG ABX800",
          "type" => "Smart TV",
          "description" => "... add description here ...",
          "purchase_price" => 200,
          "sell_price" => 400,
          "quantity_in_stock" => 5 })
item13.save
# binding.pry


binding.pry
nil
