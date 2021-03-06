require 'pry'

dots = {"a" => ['0.', '..', '..'], "b" => ['0.', '0.', '..'], "c" => ['00', '..', '..'],
        "d" => ['00', '.0', '..'], "e" => ['0.', '.0', '..'], "f" => ['00', '0.', '..'],
        "g" => ['00', '00', '..'], "h" => ['0.', '00', '..'], "i" => ['.0', '0.', '..'],
        "j" => ['.0', '00', '..'], "k" => ['0.', '..', '0.'], "l" => ['0.', '0.', '0.'],
        "m" => ['00', '..', '0.'], "n" => ['00', '.0', '0.'], "o" => ['0.', '.0', '0.'],
        "p" => ['00', '0.', '0.'], "q" => ['00', '00', '0.'], "r" => ['0.', '00', '0.'],
        "s" => ['.0', '0.', '0.'], "t" => ['.0', '00', '0.'], "u" => ['0.', '..', '00'],
        "v" => ['0.', '0.', '00'], "w" => ['.0', '00', '.0'], "x" => ['00', '..', '00'],
        "y" => ['00', '.0', '00'], "z" => ['0.', '.0', '00'], " " => ['..', '..', '..'],
        }
letters_hash = dots.invert


handle = File.open("output.txt", "r")
text = handle.read
lines = text.lines
l = lines[0].length / 2
i = 0

def characters(braille, hash, l)
  message = ''
  j = 0
  l.times do
    braille_char = []
    i = 0
    3.times do
      braille_char << braille[i][j,2]
      i += 1
    end
    j += 2
    found = hash.has_key?(braille_char)
    message << hash[braille_char]
  end
puts message
end

characters(lines, letters_hash, l)




def print(file, hash)
  line0, line1, line2 = '', '', ''
  file.each_char do |char|
     line1 << hash[char][0]
  end
  file.each_char do |char|
     line2 << hash[char][1]
  end
  file.each_char do |char|
     line3 << hash[char][2]
  end
  puts line1, line2, line3
end

# {["0.", "..", ".."]=>"a",
#  ["0.", "0.", ".."]=>"b",
#  ["00", "..", ".."]=>"c",
#  ["00", ".0", ".."]=>"d",
#  ["0.", ".0", ".."]=>"e",
#  ["00", "0.", ".."]=>"f",
#  ["00", "00", ".."]=>"g",
#  ["0.", "00", ".."]=>"h",
#  [".0", "0.", ".."]=>"i",
#  [".0", "00", ".."]=>"j",
#  ["0.", "..", "0."]=>"k",
#  ["0.", "0.", "0."]=>"l",
#  ["00", "..", "0."]=>"m",
#  ["00", ".0", "0."]=>"n",
#  ["0.", ".0", "0."]=>"o",
#  ["00", "0.", "0."]=>"p",
#  ["00", "00", "0."]=>"q",
#  ["0.", "00", "0."]=>"r",
#  [".0", "0.", "0."]=>"s",
#  [".0", "00", "0."]=>"t",
#  ["0.", "..", "00"]=>"u",
#  ["0.", "0.", "00"]=>"w",
#  ["00", "..", "00"]=>"x",
#  ["00", ".0", "00"]=>"y",
#  ["0.", ".0", "00"]=>"z",
#  ["..", "..", ".."]=>" "}
