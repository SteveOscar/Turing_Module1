# 1
def bla(a, * ,b)
  puts a.to_s
  puts b.to_s
end

bla(1, 2, 3, 4, 5)


# 2
animals = %w(dog cat goat capybara)

animals.map { |a| a.capitalize! }

puts animals.join(', ')

# 3
# Methods ending in a !('bang') are usually destructive, meaning they
# modify the object they are called on. They should be used when
# a permanant modification of the existing data is required


# Part 2
# Escaping a character means displaying it in the string
# Characters that have to be escaped: '   \     "

puts "Steve \n5\'9\""

# 2
p "Steve \n5\'9\"".split("\n")

# 3
"Steve".each_byte{|c| print c, ' ' }
puts
