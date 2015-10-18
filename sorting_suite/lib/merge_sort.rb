require 'pry'
class MergeSort
  def sort(list)
    return list if list.length == 1 || list == []
    m = list.length / 2
    left = list[0..(m - 1)]
    right = list[m..-1]
    merge(sort(left), sort(right))
  end

  def merge(left, right)
    sorted_array = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted_array << left.shift
      else
        sorted_array << right.shift
      end
    end
    sorted_array + left + right
  end
end

# sorter = MergeSort.new
# puts sorter.sort([100, 0, 3, 2, 1, 4])
