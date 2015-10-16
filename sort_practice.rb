require 'pry'





# Insertion Sort base code
# unsorted_array = [4, 2, 0, 18, 101, 3, 1]
# #unsorted_array = %w(car truck plane jet zebra)
# sorted_array = []
#
# sorted_array << unsorted_array.shift
# i = 1
# loop do
#   num = unsorted_array.shift
#   if num < sorted_array[0]
#     sorted_array.unshift(num)
#   else
#     loop do
#       if num < sorted_array[i]
#         sorted_array.insert((i - 1), num)
#         break
#       else
#         i += 1
#         if sorted_array.length == i
#           sorted_array << num
#           break
#         end
#       end
#     end
#   end
#
#   break if unsorted_array.length == 0
# end
#
# puts sorted_array




# Bubble Sort base code
# unsorted_array.length.times do
#   previous = 0
#   current = 1
#   (array.length - 1).times do
#     if array[previous] > array[current]
#       array[previous], array[current] = array[current], array[previous]
#     end
#     previous += 1
#     current += 1
#   end
# end
#
# puts array
