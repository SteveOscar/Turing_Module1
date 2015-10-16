require 'minitest'
require 'minitest/autorun'
require './merge_sort'

class InsertionTest < Minitest::Test

  def test_empty_array
    unsorted_array = MergeSort.new([])
    assert_equal [], unsorted_array.list
  end

  def test_has_elements
    unsorted_array = MergeSort.new([5, 3, 9, 8])
    assert_equal [5, 3, 9, 8], unsorted_array.list
  end

  def test_splits_array
    unsorted_array = MergeSort.new([5, 3, 9, 8])
    assert_equal [5, 3], unsorted_array.split
  end


end
