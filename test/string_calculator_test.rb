require "minitest/autorun"
require_relative "../lib/string_calculator"

class StringCalculatorTest < Minitest::Test
  def test_empty_string_returns_zero
    calc = StringCalculator.new
    assert_equal 0, calc.add("")
  end
end
