class ListBuilder
  def self.combine(list_one, list_two)
    combined = []
    list_one.each_with_index do |value, index|
      combined << value
      combined << list_two[index]
    end
    combined
  end
end
