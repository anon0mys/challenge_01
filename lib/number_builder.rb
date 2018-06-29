class NumberBuilder
  def combine(list)

  end

  def leading_numbers(list)
    list.reduce({}) do |output, value|
      key = value.to_s.shift
      output[key] = value
      output
    end
  end
end
