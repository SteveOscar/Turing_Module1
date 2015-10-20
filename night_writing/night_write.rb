require 'pry'
# class FileReader
#
# end

class NightWriter
  attr_reader :reader, :braille, :dots

  def initialize
    @braille = ''
    @dots = {"a" => ['0.', '..', '..'], "b" => ['0.', '0.', '..'], "c" => ['00', '..', '..'],
            "d" => ['00', '.0', '..'], "e" => ['0.', '.0', '..'], "f" => ['00', '0.', '..'],
            "g" => ['00', '00', '..'], "h" => ['0.', '00', '..'], "i" => ['.0', '0.', '..'],
            "j" => ['.0', '00', '..'], "k" => ['0.', '..', '0.'], "l" => ['0.', '0.', '0.'],
            "m" => ['00', '..', '0.'], "n" => ['00', '.0', '0.'], "o" => ['0.', '.0', '0.'],
            "p" => ['00', '0.', '0.'], "q" => ['00', '00', '0.'], "r" => ['0.', '00', '0.'],
            "s" => ['.0', '0.', '0.'], "t" => ['.0', '00', '0.'], "u" => ['0.', '..', '00'],
            "v" => ['0.', '0.', '00'], "w" => ['0.', '0.', '00'], "x" => ['00', '..', '00'],
            "y" => ['00', '.0', '00'], "z" => ['0.', '.0', '00'], " " => ['..', '..', '..'],
            }
  end

  def read(filename)
    @reader = File.read(filename)
  end

  def write_file
    out = File.open("output.txt", "w")
    out.write(@braille)
    puts "Created filename containing #{@braille.length / 2} characters"
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille
  end

  def encode_to_braille
    line0, line1, line2 = '', '', ''
    @reader.each_char do |char|
       line0 << @dots[char][0]
    end
    @reader.each_char do |char|
       line1 << @dots[char][1]
    end
    @reader.each_char do |char|
       line2 << @dots[char][2]
    end
    @braille << line0 + "\n" + line1 + "\n" + line2 + "\n"
  end
end


message = NightWriter.new

message.read('message.txt')
message.encode_to_braille
message.write_file
