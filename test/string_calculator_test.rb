require "minitest/autorun"
require_relative "../lib/string_calculator"

class StringCalculatorTest < Minitest::Test
  def test_empty_string_returns_zero
    calc = StringCalculator.new
    assert_equal 0, calc.add("")
  end

  def test_single_number_returns_value
    calc = StringCalculator.new
    assert_equal 5, calc.add("5")
  end
end
