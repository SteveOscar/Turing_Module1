class InsertionSort
  def find_insertion_point(sorted_array, i, num)
    loop do
      if sorted_array.length == i || num < sorted_array[i]
        sorted_array.insert((i), num)
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

  def main_loop(sorted_array, unsorted_array)
    loop do
      i = 1
      num = unsorted_array.shift
      if num < sorted_array[0]
        sorted_array.unshift(num)
      else
        find_insertion_point(sorted_array, i, num)
      end
      break if unsorted_array.length == 0
    end
  end

  def sort(list)
    return list if list == []
    unsorted_array = list
    sorted_array = []
    sorted_array << unsorted_array.shift
    main_loop(sorted_array, unsorted_array)
    sorted_array
  end
end

# sorter = InsertionSort.new
# puts sorter.sort([4, 2, 0, 18, 101, 3, 1])
