class BubbleSort
  def compare_two_elements(p, c, list)
    list[p], list[c] = list[c], list[p] if list[p] > list[c]
  end

  def swap(list)
    previous = 0; current = 1
    (list.length - 1).times do
      compare_two_elements(previous, current, list)
      previous += 1; current += 1
    end
  end

  def sort(list)
    list.length.times do
      swap(list)
    end
    list
  end
end

# sorter = BubbleSort.new
# p sorter.sort([4, 3, 7, 1, 2])
