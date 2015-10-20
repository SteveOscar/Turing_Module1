require 'minitest'
require 'minitest/autorun'
require './night_write'

class NightWriterTest < Minitest::Test
  def test_file_import
    skip
    message = NightWriter.new
    assert_equal 'abc', message.read
  end

  def test_encoding_letters
    text = 'abc'
    message = NightWriter.new
    assert_equal "0.0.00\n..0...\n......\n",
    message.encode_to_braille(text)
  end

  def test_write_file
    skip
    message = NightWriter.new
    assert_equal 'abc', message.read
  end

  def test_hash
    skip
    message = NightWriter.new
    assert_equal "['0.', '..', '..']", @dots["a"]
  end
end
