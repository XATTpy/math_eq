require 'rails_helper'

describe Equation do
    before(:all) do
        @linear_equation = Equation.create(0)
        @quadratic_equation = Equation.create(1)
        @linear_equation.a, @linear_equation.b = 2.5, 5
        @quadratic_equation.a, @quadratic_equation.b = 9, -81
    end

    it 'has right index of type' do
        @linear_equation.class.should eq Linear.new.class
        @quadratic_equation.class.should eq Quadratic.new.class
    end

    it 'has right forms of equations' do
        @linear_equation.get_form.should eq 'ax + b = 0'
        @quadratic_equation.get_form.should eq 'ax^2 + b = 0'
    end

    it 'has right calculation' do
        linear_result = -2
        quadratic_result = 3
        @linear_equation.get_result.should eq linear_result
        @quadratic_equation.get_result.should eq quadratic_result
    end
end