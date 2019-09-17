class EquationController < ApplicationController
    def index
    end

    def create
        type_index = params[:type].to_i
        equation = Equation.create(type_index)
        @equation = equation
    end

    def show
        equation = Equation.create(params[:type_index].to_i)
        a, b = params[:a], params[:b]
        equation.a, equation.b = a.to_f, b.to_f
        render json: {result: equation.get_result}
    end
end