require 'minitest'          # => true
require 'minitest/autorun'  # => true
require './insertion_sort'  # ~> LoadError: cannot load such file -- ./insertion_sort

class InsertionTest < Minitest::Test

  def test_empty_array
    unsorted_array = InsertionSort.new([])
    assert_equal [], unsorted_array.list
  end

  def test_has_elements
    unsorted_array = InsertionSort.new([5, 3, 9, 8])
    assert_equal [5, 3, 9, 8], unsorted_array.list
  end

  def test_sorted_array
    unsorted_array = InsertionSort.new([1, 2, 3, 5])
    assert_equal [1, 2, 3, 5], unsorted_array.sort
  end

  def test_number_sort
    unsorted_array = InsertionSort.new([5, 3, 9, 8])
    assert_equal [3, 5, 8, 9], unsorted_array.sort
  end

  def test_string_sort
    unsorted_array = InsertionSort.new(%w(car truck plane tank))
    assert_equal %w(car plane tank truck), unsorted_array.sort
  end

end

# >> Run options: --seed 10170
# >>
# >> # Running:
# >>
# >>
# >>
# >> Finished in 0.000777s, 0.0000 runs/s, 0.0000 assertions/s.
# >>
# >> 0 runs, 0 assertions, 0 failures, 0 errors, 0 skips

# ~> LoadError
# ~> cannot load such file -- ./insertion_sort
# ~>
# ~> /Users/stevenolson/.rvm/rubies/ruby-2.0.0-p643/lib/ruby/site_ruby/2.0.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/stevenolson/.rvm/rubies/ruby-2.0.0-p643/lib/ruby/site_ruby/2.0.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/stevenolson/Turing/1module/insertion_sort_test.rb:3:in `<main>'
