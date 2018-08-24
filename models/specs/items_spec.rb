require("minitest/autorun")
require_relative('../item')

class TestItem < MiniTest::Test

  def setup
    options = {"id" => 1,
              "manufacturer_id" => 1,
              "name" => "TV",
              "description" => "Smart TV",
              "cost_price" => 100.00,
              "sell_price" => 200,
              "quantity_in_stock" => 10,
              "min_stock_level" =>2,
              "max_stock_level" =>50}

    @item = Item.new(options)
  end

  def test_item_has_name()
    result = @item.name()
    assert_equal("TV", result)
  end


end
