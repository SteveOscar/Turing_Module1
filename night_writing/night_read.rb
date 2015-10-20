require 'pry'
class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

class NightReader
  attr_reader :reader, :writer, :braille, :letters

  def initialize
    @reader = FileReader.new
    @text = @reader
    @braille = ''
    @dot = {"a" => ['0.', '..', '..'], "b" => ['0.', '0.', '..'], "c" => ['00', '..', '..'],
            "d" => ['00', '.0', '..'], "e" => ['0.', '.0', '..'], "f" => ['00', '0.', '..'],
            "g" => ['00', '00', '..'], "h" => ['0.', '00', '..'], "i" => ['.0', '0.', '..'],
            "j" => ['.0', '00', '..'], "k" => ['0.', '..', '0.'], "l" => ['0.', '0.', '0.'],
            "m" => ['00', '..', '0.'], "n" => ['00', '.0', '0.'], "o" => ['0.', '.0', '0.'],
            "p" => ['00', '0.', '0.'], "q" => ['00', '00', '0.'], "r" => ['0.', '00', '0.'],
            "s" => ['.0', '0.', '0.'], "t" => ['.0', '00', '0.'], "u" => ['0.', '..', '00'],
            "v" => ['0.', '0.', '00'], "w" => ['.0', '00', '.0'], "x" => ['00', '..', '00'],
            "y" => ['00', '.0', '00'], "z" => ['0.', '.0', '00'], " " => ['..', '..', '..'],
            "!" => ['..', '00', '0.'], "'" => ['..', '..', '0.'], "," => ['..', '0.', '..'],
            "-" => ['..', '..', '00'], "." => ['..', '00', '.0'], "?" => ['..', '..', '..'],
            }.invert
  end

  lines = text.lines
  l = lines[0].length / 2
  i = 0

  def decode_to_text(braille, hash, l)
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
  output_file
  end


  def output_file
    out = File.open("output.txt", "w")
    out.write(@braille)
    puts "Created filename containing #{@braille.length / 2} characters"
    @braille
  end

end

if __FILE__ == $0
  night = NightWriter.new
  file = night.reader.read
  night.encode_to_braille(file)
end
