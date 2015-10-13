# #Clear Answer
# (1..1000).each do |n|
#   message = ''
#   if n % 7 == 0
#     message += 'Super'
#   end
#   if n % 3 == 0
#     message += 'Fizz'
#   end
#   if n % 5 == 0
#     message += 'Buzz'
#   end
#   if message == ''
#     puts n.to_s
#   else
#     puts message
#   end
# end

# Shortest Answer
(1..1000).each do |n|
  x = ''
  x += 'Super' if n % 7 == 0
  x += 'Fizz' if n % 3 == 0
  x += 'Buzz' if n % 5 == 0
  x = n.to_s if x == ''
  puts x
end
