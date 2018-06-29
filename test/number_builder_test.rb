require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/number_builder'

class NumberBuilderTest < Minitest::Test
  def test_it_exists
    builder = NumberBuilder.new

    assert_instance_of NumberBuilder, builder
  end

  def test_it_combines_numbers
    builder = NumberBuilder.new
    assert_equal 95021, builder.combine([50,2,1,9])
  end

  def test_it_builds_a_sorted_hash_of_leading_numbers_and_values
    builder = NumberBuilder.new

    expected = {'9' => 9, '5' => 50, '2' => 2, '1' => 1 }

    assert_equal expected, builder.leading_numbers([50,2,1,9])
  end
end
