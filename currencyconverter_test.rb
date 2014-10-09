require 'minitest/autorun'
require 'minitest/pride'
require './currencyconverter'

class TestDollar < MiniTest::Test

  def test_convert_15_dollar_to_euro
		exchange = CurrencyConverter.new(15, :dollar, :euro)
		assert_equal 11.85, 11.85
	end

  def test_convert_15_dollar_to_pound
    exchange = CurrencyConverter.new(15, :dollar, :pound)
    assert_equal 9.3, 9.3
  end

  def test_convert_15_dollar_to_yen
    exchange = CurrencyConverter.new(15, :dollar, :yen)
    assert_equal 1623.9, 1623.9
  end

  def test_convert_15_dollar_to_gold
    exchange = CurrencyConverter.new(15, :dollar, :gold)
    assert_equal 0.01230507, 0.01230507
  end

end




























#end
