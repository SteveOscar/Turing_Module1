class InsertionSort
  attr_reader :list

  def initialize(list)
    @list = list
  end

  def outer_sort(unsorted_array, sorted_array)
    loop do
      i = 1
      num = unsorted_array.shift
      if num < sorted_array[0]
        sorted_array.unshift(num)
      else
        inner_sort(sorted_array, i, num)
      end
      break if unsorted_array.length == 0
    end
  end

  def inner_sort(sorted_array, i, num)
    loop do
      if sorted_array.length == i || num < sorted_array[i]
        sorted_array.insert((i), num) # removed '- 1' from i
        break
      else
        i += 1
        if sorted_array.length == i
          sorted_array << num
          break
        end
      end
    end
  end

  def sort
    unsorted_array = @list
    sorted_array = []
    sorted_array << unsorted_array.shift

    outer_sort(unsorted_array, sorted_array)

    sorted_array
  end
end

sorter = InsertionSort.new([4, 2, 0, 18, 101, 3, 1])
puts sorter.sort
