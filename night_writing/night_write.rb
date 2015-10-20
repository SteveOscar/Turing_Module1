require 'pry'
class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

class NightWriter
  attr_reader :reader, :writer, :braille, :dots

  def initialize
    @reader = FileReader.new
    @text = @reader.read
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

  def encode_to_braille
    line0, line1, line2 = '', '', ''
    @text.each_char { |char| line0 << @dots[char][0] }
    @text.each_char { |char| line1 << @dots[char][1] }
    @text.each_char { |char| line2 << @dots[char][2] }
    write_file(line0, line1, line2)
  end

  def write_file(line0, line1, line2)
    @braille << line0 + "\n" + line1 + "\n" + line2 + "\n"
    output_file()
  end

  def output_file
    out = File.open("output.txt", "w")
    out.write(@braille)
    puts "Created filename containing #{@braille.length / 2} characters"
  end

end

message = NightWriter.new
#
message.encode_to_braille
