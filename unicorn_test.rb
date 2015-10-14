require 'minitest'
require 'minitest/autorun'
require './unicorn'

class UnicornTest < Minitest::Test

  def test_has_name
    unicorn = Unicorn.new('Robert')
    assert_equal 'Robert', unicorn.name
  end

  def test_other_name
    unicorn = Unicorn.new('Carl')
    assert_equal 'Carl', unicorn.name
  end

  def test_is_white
    unicorn = Unicorn.new('Jenny')
    assert_equal 'white', unicorn.color
  end

  def test_knows_if_its_white
    unicorn = Unicorn.new('Harriet', 'red')
    refute unicorn.white?, "Harriet thinks she's white, but she is green"
  end

  def test_other_colors
    unicorn = Unicorn.new('Louisa', 'red')
    assert_equal 'red', unicorn.color
  end

  def test_unicorn_says_different_sparkly_stuff
    unicorn = Unicorn.new("Francis")
    assert_equal "**;* I **;*", unicorn.say("I")
  end

end
