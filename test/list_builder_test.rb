require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/list_builder'

class ListBuilderTest < Minitest::Test
  def test_it_exists
    builder = ListBuilder.new

    assert_instance_of ListBuilder, builder
  end

  def test_it_can_combine_two_lists
    one = %w[a b c]
    two = [1,2,3]
    expected  = ['a',1,'b',2,'c',3]

    assert_equal expected, ListBuilder.combine(one, two)
  end
end
