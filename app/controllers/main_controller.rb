class MainController < ApplicationController
  def index
  end

  def arguments
    @equation = Equation.create(type: "#{params['type']}")
  end

  def result
    a, b = params['a'], params['b']
    equation = Equation.last
    equation.update(a: a, b: b)
    @equation = equation
  end
end
