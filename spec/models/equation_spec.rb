require 'rails_helper'

describe Equation do
    before(:all) do
        @linear_equation = Equation.create(0)
        @quadratic_equation = Equation.create(1)
        @linear_equation.a, @linear_equation.b = 2.5, 5
        @quadratic_equation.a, @quadratic_equation.b = 9, -81
    end

    it 'has right index of type' do
        expect(@linear_equation.class).to eq Linear.new.class
        expect(@quadratic_equation.class).to eq Quadratic.new.class
    end

    it 'has right forms of equations' do
        expect(@linear_equation.get_form).to eq 'ax + b = 0'
        expect(@quadratic_equation.get_form).to eq 'ax^2 + b = 0'
    end

    it 'has right calculation' do
        linear_result = -2
        quadratic_result = 3
        expect(@linear_equation.get_result).to eq linear_result
        expect(@quadratic_equation.get_result).to eq quadratic_result
    end
end