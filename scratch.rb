#
# def reverse_append(ary, n)
#   return ary if ary.length == n  # => false, false, false, true
#   ary << ary.length              # => [0], [0, 1], [0, 1, 2]
#   reverse_append(ary, n)         # => [0, 1, 2], [0, 1, 2], [0, 1, 2]
# end
#
# reverse_append([], 3)  # => [0, 1, 2]
#
# def fib(n)
#   return 0 if n == 0
#   return 1 if n == 1
#   fib(n-1) + fib(n-2)
#
# end
array = [1, 2, 6, 7]  # => [1, 2, 6, 7]
# split_array = array.each_slice(1).to_a  # => [[1], [2], [6], [7]]
# lenght = split_array.length             # => 4

left = []   # => []
right = []  # => []

def split(array, left, right)
  return array if array.length <= 1        # => false
  left << array.slice!(0, array.length/2)  # => [[1, 2]]
  right << array                           # => [[6, 7]]
  array = left + right                     # => [[1, 2], [6, 7]]
  #split(array, left, right)
end

split(array, left, right)  # => [[1, 2], [6, 7]]
left                       # => [[1, 2]]
right                      # => [[6, 7]]
array.length               # => 2
