class MainController < ApplicationController
  def index
  end

  def type
    @equation = Equation.create(type: "#{params['type']}")
  end
end
