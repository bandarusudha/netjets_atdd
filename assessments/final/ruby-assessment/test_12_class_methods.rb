require 'helper'

class AboutClassMethods < Test::Unit::TestCase

  # ------------------------------------------------------------------

  class Dog2
    def wag
      :instance_level_wag
    end
    
    def self.wag
    	:class_level_wag
    end
  end

  def test_class_methods_are_independent_of_instance_methods
    fido = Dog2.new
    assert_equal :instance_level_wag, fido.wag
    assert_equal :class_level_wag, Dog2.wag
  end

end
