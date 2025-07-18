class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    parts = extract_numbers(numbers)
    integers = parts.map(&:to_i)

    negatives = integers.select { |n| n < 0 }
    raise "Negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?

    integers.sum
  end

  private

  def extract_numbers(numbers)
    if numbers.start_with?("//")
      delimiter_line, number_string = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter_line[2..])
      number_string.split(/#{delimiter}/)
    else
      numbers.split(/,|\n/)
    end
  end
end
