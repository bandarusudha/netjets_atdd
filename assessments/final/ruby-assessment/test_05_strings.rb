require 'helper'

class AboutStrings < Test::Unit::TestCase

  def test_is_a_double_quoted_string_a_string
    string = "Hello, World"
    assert_equal true, string.is_a?(String)
  end

  def test_is_a_single_quoted_strings_a_string
    string = 'Goodbye, World'
    assert_equal true, string.is_a?(String)
  end

  def test_string_concatenation
    string = "Hello, " + "World"
    assert_equal "Hello, World", string
  end

  def test_string_interpolation
    value = 123
    dq_string = "The value is #{value}"
    sq_string = 'The value is #{value}'
    assert_equal false, dq_string == sq_string
  end

end
