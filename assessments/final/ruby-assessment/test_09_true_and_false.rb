require 'helper'

class AboutTrueAndFalse < Test::Unit::TestCase
  def truth_value(condition)
    if condition
      :true_stuff
    else
      :false_stuff
    end
  end

  def test_boolean_value_of_true
    assert_equal :true_stuff, truth_value(true)
  end

  def test_boolean_value_of_false
    assert_equal :false_stuff, truth_value(false)
  end

  def test_boolean_value_of_nil
    assert_equal :false_stuff, truth_value(nil)
  end

  def test_boolean_value_of_various_objects
    assert_equal :true_stuff, truth_value(1)
    assert_equal :true_stuff, truth_value(0)
    assert_equal :true_stuff, truth_value([])
    assert_equal :true_stuff, truth_value({})
    assert_equal :true_stuff, truth_value("Strings")
    assert_equal :true_stuff, truth_value("")
  end

end
