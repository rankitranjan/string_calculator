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

  def test_two_numbers_comma_separated
    calc = StringCalculator.new
    assert_equal 6, calc.add("1,5")
  end

  def test_multiple_numbers
    calc = StringCalculator.new
    assert_equal 15, calc.add("1,2,3,4,5")
  end

  def test_newline_between_numbers
    calc = StringCalculator.new
    assert_equal 6, calc.add("1\n2,3")
  end

  def test_different_delimiter
    calc = StringCalculator.new
    assert_equal 3, calc.add("//;\n1;2")
  end
end
