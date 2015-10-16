class MergeSort
  attr_reader :ary1, :ary2  # => nil

  def initialize(ary1, ary2)
    @ary1 = ary1              # => [3, 5, 2, 1]
    @ary2 = ary2              # => []
  end

  def merge_sort(ary)
    return ary if ary.length <= 1
  end

  def split
    ary = @ary1                  # => [3, 5, 2, 1]
    ary.slice!(0, ary.length/2)  # => [3, 5]
  end
end

array = MergeSort.new([3, 5, 2, 1], [])  # => #<MergeSort:0x007f837c094168 @ary1=[3, 5, 2, 1], @ary2=[]>

array.split  # => [3, 5]
