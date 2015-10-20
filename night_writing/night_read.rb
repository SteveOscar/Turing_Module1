text = File.read("message.txt")

puts text

puts
writer = File.open("braille.txt", "w")

writer.write('HELLO YOU PERSON')
puts 'Check your braille file'
