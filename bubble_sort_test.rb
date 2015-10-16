require 'minitest'
require 'minitest/autorun'
require './bubble_sort'


class BubbleTest < Minitest::Test

  def test_empty_array
    array = BubbleSort.new([])
    assert_equal [], array.list
  end

  def test_has_elements
    array = BubbleSort.new([9, 5, 1, 7])
    assert_equal [9, 5, 1, 7], array.list
  end

  def test_sorted_array
    array = BubbleSort.new([1, 2, 3, 4])
    assert_equal [1, 2, 3, 4], array.list
  end

  def test_number_sort
    array = BubbleSort.new([9, 5, 1, 7])
    assert_equal [1, 5, 7, 9], array.sort
  end

  def test_string_sort
    array = BubbleSort.new(%w(car truck plane tank))
    assert_equal %w(car plane tank truck), array.sort
  end

end
