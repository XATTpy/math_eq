class Quadratic < Equation
    before_create do
        self.form = 'ax^2 + b = 0'
    end
end
