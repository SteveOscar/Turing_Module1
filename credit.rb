number = '7992739871078422'
i = number.length
j = i - 3 # Index of string from where we will work back from

loop do
  break if j <= 0
  x = (number[j].to_i * 2).to_s
  if x.to_i > 9
    number[j] = (x[0].to_i + x[1].to_i).to_s
  else
    number[j] = x
  end
  j = j - 2
end

total = number.each_char.map {|c| c.to_i }.reduce(:+)
# chars.map(&:to_i).reduce(:+)
if total % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
