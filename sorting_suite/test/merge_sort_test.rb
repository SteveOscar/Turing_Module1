require 'minitest'
require 'minitest/autorun'
require './lib/merge_sort'

class MergeTest < Minitest::Test
  def test_empty_array
    array = MergeSort.new
    assert_equal [], array.sort([])
  end

  def test_sorted_array
    array = MergeSort.new
    assert_equal [1, 2, 3, 4], array.sort([1, 2, 3, 4])
  end

  def test_number_sort
    array = MergeSort.new
    assert_equal [1, 5, 7, 9], array.sort([9, 5, 1, 7])
  end

  def test_string_sort
    array = MergeSort.new
    assert_equal %w(car plane tank truck), array.sort(%w(car truck plane tank))
  end

  def test_presorted
    array = MergeSort.new
    assert_equal [1, 2, 3, 4], array.sort([1, 2, 3, 4])
  end

  def test_zeroes
    array = MergeSort.new
    assert_equal [0, 0, 0, 0], array.sort([0, 0, 0, 0])
  end
end
