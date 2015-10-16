# module SortingSuite
  class BubbleSort
    attr_reader :list

    def initialize(list)
      @list = list
    end

    def swap(array)
      previous = 0; current = 1
      (array.length - 1).times do
        if array[previous] > array[current]
          array[previous], array[current] = array[current], array[previous]
        end
        previous += 1; current += 1
      end
    end

    def sort
      array = @list
      array.length.times do
        swap(@list)
      end
      array
    end
  end
# end

sorter = BubbleSort.new([4, 3, 7, 1, 2],)
p sorter.sort
