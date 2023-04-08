require 'minitest/autorun'
require_relative 'two_fer'

class TwoFerTest < Minitest::Test
  def test_no_name_given
    # skip
    assert_equal 'One for you, one for me.', TwoFer.two_fer
  end

  def test_a_name_given
    # skip
    assert_equal 'One for Alice, one for me.', TwoFer.two_fer('Alice')
  end

  def test_another_name_given
    # skip
    assert_equal 'One for Bob, one for me.', TwoFer.two_fer('Bob')
  end

  def test_name_given_in_spanish
    # skip
    assert_equal 'Uno para Bob, uno para mi.', TwoFer.new('Bob', :Español).to_s
  end

  def test_name_given_in_esperanto
    # skip
    assert_equal 'Unu por Bill Murray, unu por mi.', TwoFer.new('Bill Murray', :Esparanto).to_s
  end
end
