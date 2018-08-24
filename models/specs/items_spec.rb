require("minitest/autorun")
require_relative('../item')

class TestItem < MiniTest::Test

  def setup
    options = {"id" => 1,
              "manufacturer_id" => 20,
              "name" => "TV",
              "description" => "Smart TV",
              "cost_price" => 100.11,
              "sell_price" => 200,
              "quantity_in_stock" => 10,
              "min_stock_level" => 2,
              "max_stock_level" => 50 }

    @item = Item.new(options)
  end

  def test_item_has_name()
    result = @item.name()
    assert_equal("TV", result)
  end

  def test_item_has_id()
    result = @item.id()
    assert_equal(1, result)
  end

  def test_item_has_manufacturer_id()
    result = @item.manufacturer_id()
    assert_equal(20, result)
  end

  def test_item_has_description()
    result = @item.description()
    assert_equal("Smart TV", result)
  end

  def test_item_has_cost_price()
    result = @item.cost_price()
    assert_equal(100.11, result)
  end

  def test_item_has_sell_price()
    result = @item.sell_price()
    assert_equal(200, result)
  end

  def test_item_has_quantity_in_stock()
    result = @item.quantity_in_stock()
    assert_equal(10, result)
  end

  def test_item_has_min_stock_level()
    result = @item.min_stock_level()
    assert_equal(2, result)
  end

  def test_item_has_max_stock_level()
    result = @item.max_stock_level()
    assert_equal(50, result)
  end


end
