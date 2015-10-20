require 'minitest'
require 'minitest/autorun'
require './night_write'

class NightWriterTest < Minitest::Test
  def test_file_import
    message = NightWriter.new('test.txt')
    assert_equal 'abc', message.read
  end

  def test_encoding
    skip
    message = NightWriter.new('test.txt')
    assert_equal '.00...
                  0..0..
                  ..00..', message.encode_to_braille
  end

  def test_write_file
    skip
    message = NightWriter.new
    assert_equal 'abc', message.read
  end

  def test_hash
    message = NightWriter.new
    assert_equal "['0.', '..', '..']", @dots["a"]
  end



end
