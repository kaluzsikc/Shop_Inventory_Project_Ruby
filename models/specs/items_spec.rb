require("minitest/autorun")
require_relative('../item')

class TestItem < MiniTest::Test

  def setup
    options = {"id" => 1,
              "manufacturer_id" => 20,
              "name" => "Samsung WEDZ900",
              "type" => "Smart TV",
              "description" => "Just another tv",
              "purchase_price" => 100.11,
              "sell_price" => 200,
              "quantity_in_stock" => 10 }

    @item = Item.new(options)
  end

  def test_item_has_id()
    result = @item.id()
    assert_equal(1, result)
  end

  def test_item_has_manufacturer_id()
    result = @item.manufacturer_id()
    assert_equal(20, result)
  end

  def test_item_has_name()
    result = @item.name()
    assert_equal("TV", result)
  end

  def test_item_has_description()
    result = @item.description()
    assert_equal("Just another tv", result)
  end

  def test_item_has_purchase_price()
    result = @item.purchase_price()
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

end
