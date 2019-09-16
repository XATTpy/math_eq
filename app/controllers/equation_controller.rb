class EquationController < ApplicationController
    def index
    end

    def create
        type_index = params[:type].to_i
        equation = Equation.create(type_index)
        if equation
            @equation = equation
            @type_index = type_index
        else
            render json: {errors: category.errors}, status: :unprocessable_entity
        end
    end

    def show
        equation = Equation.create(params[:type_index].to_i)
        a, b = params[:a], params[:b]
        equation.a, equation.b = a, b
        render json: equation
    end
end