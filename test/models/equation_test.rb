require 'test_helper'

class EquationTest < ActiveSupport::TestCase
  test "should not save equation with a=0" do
    equation = Equation.new()
    assert_not equation.save
  end
end
