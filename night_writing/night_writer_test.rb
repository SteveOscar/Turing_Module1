require 'minitest'
require 'minitest/autorun'
require './night_write'

class NightWriterTest < Minitest::Test
  def test_file_import
    message = NightWriter.new
    assert_equal 'abc', message.read('message.txt')
  end





end
