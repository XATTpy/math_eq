class MainController < ApplicationController
  def index
  end

  def arguments
    @equation = Equation.create(type: "#{params['type']}")
  end
end
