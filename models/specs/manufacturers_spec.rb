require("minitest/autorun")
require_relative("../manufacturer")

class TestManufacurer < MiniTest::Test

  def setup
    options = {"id" =>10,
               "name" => "LG",
               "address" => "123 Lothian Road, Edinburgh, UK",
               "telephone" => "123456789"}
    @manufacturer = Manufacturer.new(options)
  end

  def test_manufacurer_has_id()
    result = @manufacturer.id()
    assert_equal(10, result)
  end

  def test_manufacurer_has_name()
    result = @manufacturer.name()
    assert_equal("LG", result)
  end

  def test_manufacurer_has_address()
    result = @manufacturer.address()
    assert_equal("123 Lothian Road, Edinburgh, UK", result)
  end

  def test_manufacurer_has_telephone()
    result = @manufacturer.telephone()
    assert_equal("123456789", result)
  end



end
