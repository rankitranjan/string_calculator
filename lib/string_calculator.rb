class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter[2..])
      parts = numbers.split(/#{delimiter}/)
    else
      parts = numbers.split(/,|\n/)
    end

    nums = parts.map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    raise "Negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?

    nums.sum
  end
end
