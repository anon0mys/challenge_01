require 'minitest/autorun'
require 'minitest/pride'
require './lib/sums.rb'

class SumsTest < Minitest::Test

  def test_it_exists
    sums = Sums.new

    assert_instance_of Sums, sums
  end

  def test_it_can_sum_using_for_loop
    sums = Sums.new

    assert_equal 15, sums.for_loop_sum([1,2,3,4,5])
    assert_equal 6, sums.for_loop_sum([1,2,3])
  end

  def test_it_can_sum_using_while_loop
    sums = Sums.new

    assert_equal 15, sums.while_loop_sum([1,2,3,4,5])
    assert_equal 6, sums.while_loop_sum([1,2,3])
  end

  def test_it_can_sum_using_recursion
    sums = Sums.new

    assert_equal 15, sums.recursive_sum([1,2,3,4,5])
    assert_equal 6, sums.recursive_sum([1,2,3])
  end
end
